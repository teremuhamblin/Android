Un guide de style graphique complet donne une identité visuelle claire, cohérente et professionnelle à tout ton projet The‑MadDoG‑Android‑System. Il sert de référence pour les diagrammes, images, photos, vidéos, logos et tout élément visuel présent dans media/. Ce document peut être placé dans :

`
media/style-guide.md
`

---

Guide de style graphique complet
(Pour le dossier media/ du projet The‑MadDoG‑Android‑System)

Identité visuelle générale

L’identité visuelle repose sur une esthétique technique, moderne et sobre, adaptée à un projet orienté système Android. Elle doit évoquer la fiabilité, la clarté et la rigueur technique.

Palette de couleurs principale

| Usage | Couleur | Hex |
|-------|---------|------|
| Fond sombre (diagrammes, blocs) | Anthracite | #222222 |
| Blocs principaux | Gris profond | #333333 |
| Détails / sous‑blocs | Gris acier | #444444 |
| Texte clair | Blanc cassé | #EEEEEE |
| Accent Android | Vert Android | #3DDC84 |
| Accent technique | Bleu cyan | #00AEEF |

Principes d’utilisation
- Les diagrammes utilisent un fond sombre (#222) pour un contraste optimal.
- Les accents verts et cyan servent uniquement à mettre en valeur des éléments importants.
- Les images et illustrations doivent rester cohérentes avec cette palette.

---

Typographie et lisibilité

Règles générales
- Utiliser la police par défaut du rendu Markdown (sans-serif).
- Éviter les textes trop longs dans les diagrammes.
- Préférer des phrases courtes et des mots clés.
- Ne jamais utiliser plus de deux tailles de texte dans un même visuel.

Pour les diagrammes Mermaid
- Titres courts (1 à 3 mots).
- Nœuds concis, sans phrases complètes.
- Pas de texte décoratif inutile.

---

Style des diagrammes

Les diagrammes doivent être homogènes dans tout le projet.

Formes et structure
- Formes rectangulaires simples.
- Hiérarchie verticale ou horizontale claire.
- Pas de croisement de flèches.
- Utiliser des flèches directionnelles cohérentes (haut → bas ou gauche → droite).

Classes Mermaid standardisées
- root : nœud principal, fond #222, texte blanc.
- layer : couches intermédiaires, fond #333.
- detail : éléments détaillés, fond #444.

Bonnes pratiques
- Un diagramme = une idée principale.
- Préférer plusieurs petits diagrammes plutôt qu’un énorme.
- Garder un ratio visuel équilibré (pas plus de 20 nœuds par diagramme).

---

Style des images

Types d’images acceptées
- Illustrations techniques.
- Captures d’écran Android.
- Schémas explicatifs.
- Graphiques simples.

Règles de qualité
- Résolution recommandée : 1200–1600 px de large.
- Format .png pour les schémas, .jpg pour les photos, .webp pour les versions optimisées.
- Pas de compression excessive.
- Pas de texte trop petit.

Confidentialité
- Flouter toute donnée personnelle.
- Masquer les identifiants, numéros, visages, adresses IP, etc.

---

Style des photos

Recommandations
- Photos nettes, bien éclairées.
- Fond neutre ou flou.
- Pas de reflets sur les écrans.
- Orientation cohérente (paysage pour les appareils, portrait pour les détails).

Formats
- .jpg pour la majorité des photos.
- .png uniquement si transparence nécessaire.

---

Style des vidéos

Formats recommandés
- .mp4 (H.264) pour compatibilité maximale.
- .webm pour versions légères.

Qualité
- Résolution 1080p maximum.
- Durée courte (30–90 secondes).
- Sous‑titres intégrés si possible.
- Pas de données personnelles visibles.

Contenu
- Démonstrations claires et lentes.
- Zoom sur les éléments importants.
- Pas de mouvements brusques.

---

Logos et branding

Versions à inclure
- Logo clair (fond transparent).
- Logo sombre (fond transparent).
- Version monochrome.
- Version ASCII (déjà présente).

Règles d’utilisation
- Ne jamais déformer le logo.
- Respecter les marges de sécurité.
- Utiliser la version sombre sur fond clair et inversement.

---

Nommage des fichiers

Format standard
`
categorie-sujet-description-vX.ext
`

Exemples
- diagram-security-architecture-v1.mmd
- image-android-sandbox-overview.png
- photo-device-pixel6-bootloader.jpg
- video-adb-demo-connection.mp4

Principes
- Noms explicites.
- Pas d’espaces.
- Versionner si nécessaire.

---

Cohérence visuelle globale

Ce qui doit rester constant
- Palette de couleurs.
- Style des diagrammes.
- Typographie.
- Marges et espacements.
- Style des flèches et connecteurs.

Ce qui peut varier
- Illustrations selon le contexte.
- Photos selon les appareils.
- Vidéos selon les besoins pédagogiques.

---

Processus de création visuelle

Étapes recommandées
1. Définir l’objectif du visuel.
2. Choisir le type (diagramme, image, photo, vidéo).
3. Respecter la palette et les règles du guide.
4. Optimiser le fichier (taille, lisibilité).
5. Ajouter dans le bon dossier.
6. Documenter dans un commit clair.

---

Licences et droits

Règles
- Les visuels créés par le projet suivent la licence du dépôt.
- Les visuels externes doivent être libres (CC‑BY, CC‑BY‑SA, CC0).
- Interdiction d’utiliser des images propriétaires non libres.
- Mentionner la licence si elle diffère de celle du projet.

---

Évolution du guide

Ce guide peut évoluer avec :
- de nouvelles conventions graphiques,
- des besoins pédagogiques,
- des améliorations de style,
- des retours de contributeurs.

---
