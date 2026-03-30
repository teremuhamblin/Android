# ============================================
#  Makefile global – Projet Android
#  Teremu – Documentation, Sécurité, Outils
# ============================================

SCRIPTS_PERL = scripts/perl
SCRIPTS_RUBY = scripts/ruby

# --------------------------------------------
#  Documentation
# --------------------------------------------

docs:
	@echo "🔍 Vérification des liens internes Markdown..."
	@perl $(SCRIPTS_PERL)/check_links.pl docs

docs-validate:
	@echo "📚 Validation de la structure documentaire..."
	@perl $(SCRIPTS_PERL)/validate_docs.pl .

docs-mermaid:
	@echo "📊 Vérification des diagrammes Mermaid..."
	@perl $(SCRIPTS_PERL)/check_mermaid.pl 80-reference/diagrams

docs-all: docs docs-validate docs-mermaid
	@echo "📘 Audit documentation terminé."

# --------------------------------------------
#  Sécurité
# --------------------------------------------

security:
	@echo "🛡️ Scan des fichiers sensibles..."
	@perl $(SCRIPTS_PERL)/scan_sensitive.pl .

security-selinux:
	@echo "🔐 Analyse des policies SELinux..."
	@perl $(SCRIPTS_PERL)/check_selinux.pl sepolicy

security-all: security security-selinux
	@echo "🛡️ Audit sécurité terminé."

# --------------------------------------------
#  Code & Interfaces
# --------------------------------------------

aidl:
	@echo "📡 Audit des fichiers AIDL..."
	@perl $(SCRIPTS_PERL)/audit_aidl.pl .

# --------------------------------------------
#  RFC – Architecture
# --------------------------------------------

rfc:
	@echo "📐 Création d'une nouvelle RFC..."
	@ruby $(SCRIPTS_RUBY)/next_rfc.rb "$(TITLE)"

# Usage :
#   make rfc TITLE="Nouvelle architecture audio"

# --------------------------------------------
#  Maintenance
# --------------------------------------------

clean:
	@echo "🧹 Nettoyage des fichiers temporaires..."
	@perl $(SCRIPTS_PERL)/clean_temp.pl .

changelog:
	@echo "📝 Génération du changelog..."
	@perl $(SCRIPTS_PERL)/generate_changelog.pl

# --------------------------------------------
#  Audit global
# --------------------------------------------

audit: docs-all security-all aidl
	@echo "🚀 Audit global terminé."

# --------------------------------------------
#  Aide
# --------------------------------------------

help:
	@echo ""
	@echo "📘 Commandes disponibles :"
	@echo ""
	@echo "  make docs            – Vérifie les liens Markdown"
	@echo "  make docs-validate   – Vérifie la présence des README"
	@echo "  make docs-mermaid    – Vérifie les diagrammes Mermaid"
	@echo "  make docs-all        – Audit complet documentation"
	@echo ""
	@echo "  make security        – Scan des fichiers sensibles"
	@echo "  make security-selinux – Analyse des policies SELinux"
	@echo "  make security-all    – Audit complet sécurité"
	@echo ""
	@echo "  make aidl            – Audit des interfaces
