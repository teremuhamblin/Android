Voici `README-v2 
- extrêmement complet pour ton dossier media/, pensé comme un guide professionnel couvrant images, photos, vidéos, graphismes, diagrammes Mermaid, normes visuelles, formats, organisation, bonnes pratiques et pipeline créatif.  
Il s’intègre parfaitement dans ton projet Android et donne un cadre clair pour tous les contributeurs.

---

media/README.md

`markdown

Ressources multimédia du projet The‑MadDoG‑Android‑System

Le dossier media/ regroupe l’ensemble des ressources visuelles et audiovisuelles utilisées dans la documentation du projet. Il constitue la bibliothèque centrale pour les images, photos, vidéos, diagrammes, illustrations et éléments graphiques qui enrichissent la compréhension du système Android.

Ce guide décrit l’organisation, les formats recommandés, les règles de nommage, les bonnes pratiques de création, ainsi qu’un guide de style visuel pour garantir une cohérence professionnelle dans toute la documentation.

---

1. Organisation du dossier

Le dossier media/ est structuré en sous‑répertoires thématiques :

`
media/
├── diagrams/        # Diagrammes Mermaid (.mmd)
├── logos/           # Logos, icônes, branding du projet
├── images/          # Images diverses (captures, schémas, illustrations)
├── photos/          # Photos réelles (appareils, écrans, matériel)
└── videos/          # Vidéos explicatives ou démonstrations
`

Chaque catégorie a un rôle précis et des règles spécifiques détaillées ci‑dessous.

---

2. Diagrammes (dossier diagrams/)

Les diagrammes Mermaid sont stockés au format .mmd pour faciliter leur édition et leur réutilisation.

Contenu typique
- Architecture de sécurité
- Sandbox Android
- Permissions
- Boot chain (AVB)
- Chiffrement FBE
- Virtualization Framework

Bonnes pratiques
- Utiliser Mermaid pour les schémas techniques.
- Préférer des structures hiérarchiques simples.
- Garder un style cohérent (couleurs, classes, organisation).
- Documenter chaque diagramme dans un fichier .md associé dans docs/.

---

3. Logos et branding (dossier logos/)

Ce dossier contient :
- Logos du projet (versions claires et sombres)
- Variantes vectorielles (si disponibles)
- ASCII art (ex. maddog-ascii.txt)

Règles
- Toujours conserver une version originale non modifiée.
- Fournir des versions optimisées pour le web.
- Respecter les proportions et marges du logo.

---

4. Images (dossier images/)

Ce dossier regroupe :
- Illustrations
- Schémas non‑Mermaid
- Captures d’écran Android
- Graphiques explicatifs

Formats recommandés
- .png pour les schémas et images techniques
- .jpg pour les photos légères
- .webp pour les versions optimisées

Bonnes pratiques
- Flouter toute donnée personnelle.
- Indiquer la version d’Android si pertinent.
- Utiliser des résolutions raisonnables (1200–1600px max).

---

5. Photos (dossier photos/)

Ce dossier contient des photos réelles :
- Appareils Android
- Interfaces physiques
- Démonstrations matérielles

Recommandations
- Préférer des photos nettes, bien éclairées.
- Éviter les arrière‑plans distrayants.
- Compresser les fichiers pour réduire la taille du dépôt.

---

6. Vidéos (dossier videos/)

Les vidéos servent à illustrer :
- Manipulations Android
- Démonstrations d’outils (ADB, logcat…)
- Explications visuelles complexes

Formats recommandés
- .mp4 (H.264) pour compatibilité maximale
- .webm pour versions légères

Règles
- Durée courte (30–90 secondes)
- Sous‑titres intégrés si possible
- Pas de données personnelles visibles

---

7. Règles de nommage

Pour garantir une organisation claire :

Format général
`
categorie-contenu-description-version.ext
`

Exemples
- diagram-security-architecture-v1.mmd
- image-android-permissions-overview.png
- photo-device-pixel6-bootloader.jpg
- video-adb-demo-connection.mp4

Principes
- Utiliser des noms explicites.
- Éviter les espaces.
- Versionner si nécessaire (v1, v2, etc.).

---

8. Guide de style visuel

Pour assurer une cohérence graphique dans tout le projet :

Palette de couleurs recommandée
- #222 : fond sombre (diagrammes)
- #333 : blocs principaux
- #444 : détails
- #00AEEF : accents Android (optionnel)
- #3DDC84 : vert Android officiel

Typographie
- Utiliser la police par défaut du rendu Markdown.
- Éviter les textes trop longs dans les diagrammes.

Iconographie
- Préférer des icônes simples et vectorielles.
- Utiliser des pictogrammes cohérents (Android, sécurité, système).

Style des diagrammes
- Formes rectangulaires simples.
- Hiérarchie claire (racine → couches → détails).
- Éviter les diagrammes trop denses.

---

9. Optimisation des médias

Pour garder un dépôt léger :

- Compresser les images (TinyPNG, Squoosh…)
- Convertir en .webp lorsque possible
- Limiter les vidéos à < 10 Mo
- Éviter les doublons

---

10. Contribution aux médias

Toute contribution doit respecter :

- Les règles de nommage
- Le guide de style visuel
- Les bonnes pratiques de confidentialité
- Les licences des images externes

Les contributeurs doivent vérifier que les médias ajoutés :
- sont utiles,
- sont légaux,
- respectent la cohérence visuelle du projet.

---

11. Licences et droits

Les médias doivent respecter les licences suivantes :

- Médias créés par le projet : licence du dépôt (ex. CC0)
- Médias externes : licence compatible (CC‑BY, CC‑BY‑SA, Apache, etc.)
- Interdiction d’utiliser des images propriétaires non libres

Chaque fichier doit mentionner sa licence si elle diffère de celle du projet.

---

12. Évolution du dossier

Le dossier media/ peut évoluer avec :
- de nouveaux diagrammes,
- des illustrations plus modernes,
- des vidéos pédagogiques,
- des améliorations du style visuel.

Toute modification majeure doit être discutée dans une issue dédiée.

`

---
