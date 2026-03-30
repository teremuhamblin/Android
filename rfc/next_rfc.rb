#!/usr/bin/env ruby
# frozen_string_literal: true

#
# Script : next_rfc.rb
# Usage  : ruby next_rfc.rb "Titre de la RFC"
#
# Fonction :
#   - Parcourt le dossier ./rfc/
#   - Trouve le numéro RFC le plus élevé (ex: rfc-0042-xxx.md)
#   - Génère le prochain numéro (ex: rfc-0043)
#   - Crée un fichier RFC basé sur TEMPLATE_RFC.md
#

require "fileutils"

RFC_DIR = "rfc"
TEMPLATE = File.join(RFC_DIR, "TEMPLATE_RFC.md")

abort "Erreur : dossier #{RFC_DIR} introuvable." unless Dir.exist?(RFC_DIR)
abort "Erreur : template #{TEMPLATE} introuvable." unless File.exist?(TEMPLATE)

title = ARGV.join(" ").strip
abort "Usage : ruby next_rfc.rb \"Titre de la RFC\"" if title.empty?

# Normalisation du titre pour le nom de fichier
slug = title.downcase.gsub(/[^a-z0-9]+/, "-").gsub(/^-|-$/, "")

# Recherche du dernier numéro RFC existant
existing = Dir.children(RFC_DIR).grep(/^rfc-\d{4}-/)

last_number = if existing.empty?
  0
else
  existing.map { |f| f[/\d{4}/].to_i }.max
end

next_number = last_number + 1
formatted = format("%04d", next_number)

filename = File.join(RFC_DIR, "rfc-#{formatted}-#{slug}.md")

# Création du fichier RFC
content = File.read(TEMPLATE)
content = content.sub("RFC-XXX", "RFC-#{formatted}")
content = content.sub("Titre de la proposition", title)

File.write(filename, content)

puts "Nouvelle RFC créée : #{filename}"
