VERSION 1

---

📁 media/ — Guide d’utilisation des médias Android 1

Ce document décrit la structure, les conventions et les bonnes pratiques pour gérer les fichiers multimédias du projet The MadDoG Android System.  
Il sert de référence pour maintenir une identité visuelle cohérente et une documentation claire.

---

🎨 1. Objectifs du dossier media/

Le dossier media/ centralise tous les éléments visuels utilisés dans :

- la documentation (docs/)
- le README principal
- les diagrammes techniques Android
- les logos et éléments de branding
- les supports pédagogiques

Cela garantit une organisation propre, une maintenance facile et une cohérence visuelle sur tout le projet.

---

🗂️ 2. Structure du dossier

`
media/
│
├── logos/
│   ├── maddog-ascii.txt
│   └── maddog-android-dark.png
│
└── diagrams/
    ├── android-architecture.png
    └── partitions-layout.png
`

📌 logos/
Contient tous les éléments liés à l’identité visuelle du projet :
- logos PNG / SVG
- versions light/dark
- ASCII art
- variantes pour documentation ou bannière

📌 diagrams/
Contient les schémas techniques :
- architecture Android
- partitions système
- processus de boot
- sandboxing, permissions, etc.

---

🖼️ 3. Conventions de nommage

Pour garder une cohérence :

Logos
`
maddog-<variant>.png
maddog-<variant>.svg
maddog-ascii.txt
`

Exemples :
- maddog-android-dark.png
- maddog-android-light.svg

Diagrammes
`
<topic>-<subtopic>.png
<topic>-diagram.png
`

Exemples :
- android-architecture.png
- partitions-layout.png
- boot-sequence-diagram.png

---

📏 4. Recommandations techniques

Formats recommandés
- PNG pour les diagrammes statiques
- SVG pour les logos (scalables, propres)
- TXT pour les ASCII art
- WEBP possible pour optimiser la taille

Résolutions
- Logos : 512×512 minimum
- Diagrammes : 1600 px de largeur pour une lecture confortable
- ASCII : largeur max 80 colonnes pour compatibilité terminal

---

🧩 5. Comment intégrer les médias dans la documentation

Exemple d’intégration dans un fichier Markdown :

`md
!Architecture Android
`

Exemple pour un logo :

`md
<p align="center">
  <img src="../media/logos/maddog-android-dark.png" width="200">
</p>
`

---

🛡️ 6. Droits et licences

Tous les médias du projet doivent respecter :

- la licence globale du dépôt (CC0 ou autre)
- les droits d’auteur des ressources externes
- la transparence sur les sources si un diagramme est inspiré d’une documentation officielle

---

🚀 7. Évolutions prévues

- Ajout d’un pack complet de logos (dark, light, monochrome)
- Création de diagrammes vectoriels (SVG)
- Mise en place d’un style visuel officiel (palette, typographie, style de flèches)
- Ajout d’un dossier media/templates/ pour les futures illustrations

---
