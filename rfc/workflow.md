---

🔄 Workflow complet d’une RFC

1. Création
- L’auteur ouvre une issue via RFC Proposal.
- Le label rfc est automatiquement appliqué.

2. Discussion
- Les mainteneurs et contributeurs débattent.
- L’auteur améliore la proposition.

3. Rédaction
- Une fois la direction validée, l’auteur crée un fichier dans /rfc/ basé sur TEMPLATE_RFC.md.

4. Revue
- Revue technique (architecture, sécurité, compatibilité).
- Revue documentation (cohérence avec 70-guidelines).

5. Décision
- Acceptée → fusionnée dans /rfc/
- Rejetée → issue fermée avec justification
- Superseded → remplacée par une RFC plus récente

6. Implémentation
- Création d’une PR liée à la RFC
- Mise à jour de la documentation
- Tests et validation

---

📍 Où placer chaque fichier ?

| Fichier | Emplacement |
|--------|-------------|
| rfcproposal.yml | .github/ISSUETEMPLATE/ |
| securityreport.yml | .github/ISSUETEMPLATE/ |
| TEMPLATE_RFC.md | rfc/ |
| README.md du dossier RFC | rfc/ |
| RFC numérotées | rfc/rfc-XXXX-nom.md |

---
