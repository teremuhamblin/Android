Ensemble de gabarits visuels prêts à l’emploi renforce la cohérence de ton projet et accélère la création de nouveaux diagrammes, images ou captures. 
Les modèles ci‑dessous couvrent les besoins essentiels : diagrammes Mermaid, captures d’écran, schémas, vidéos et illustrations. Ils s’intègrent dans ton guide de style graphique et dans l’organisation de ton dossier media/.

---

Modèles pour les diagrammes Mermaid

Diagramme hiérarchique (architecture, couches, systèmes)

`mermaid
flowchart TD

    A[Titre du diagramme]:::root

    A --> B1[Couche 1]
    A --> B2[Couche 2]
    A --> B3[Couche 3]

    B1 --> C1[Détail 1]
    B1 --> C2[Détail 2]

    B2 --> D1[Détail 1]
    B2 --> D2[Détail 2]

    B3 --> E1[Détail 1]
    B3 --> E2[Détail 2]

    classDef root fill:#222,color:#fff,stroke:#555,stroke-width:2px;
    classDef layer fill:#333,color:#fff,stroke:#666;
    classDef detail fill:#444,color:#eee,stroke:#777;

    class B1,B2,B3 layer;
    class C1,C2,D1,D2,E1,E2 detail;
`

Ce modèle sert pour les architectures système, les couches de sécurité, les pipelines techniques ou les organigrammes.

---

Diagramme de flux (processus, permissions, boot, chiffrement)

`mermaid
flowchart LR

    A[Début]:::root --> B[Étape 1]
    B --> C[Étape 2]
    C --> D[Étape 3]
    D --> E[Fin]

    classDef root fill:#222,color:#fff,stroke:#555;
    classDef step fill:#333,color:#fff,stroke:#666;

    class B,C,D,E step;
`

Idéal pour représenter un processus linéaire : boot, flux de permissions, pipeline ADB, etc.

---

Diagramme décisionnel (conditions, sécurité, choix techniques)

`mermaid
flowchart TD

    A[Action]:::root --> B{Condition ?}
    B -->|Oui| C[Option 1]
    B -->|Non| D[Option 2]

    classDef root fill:#222,color:#fff;
    classDef block fill:#333,color:#fff;

    class B,C,D block;
`

Utile pour illustrer des choix de sécurité, des branches logiques ou des comportements système.

---

Modèles pour les images et illustrations

Schéma technique (format PNG ou SVG)

Structure recommandée :
- Fond clair ou transparent.
- Lignes simples, sans ombres.
- Couleurs issues de la palette du projet.
- Titres courts.
- Éléments espacés.

Gabarit conceptuel :

`
+------------------------------------------------+
|                TITRE DU SCHÉMA                |
|                                                |
|  [Bloc 1] -----> [Bloc 2] -----> [Bloc 3]      |
|                                                |
|  Notes :                                        |
|  - Élément A                                    |
|  - Élément B                                    |
+------------------------------------------------+
`

---

Capture d’écran Android

Modèle de présentation :

- Résolution cible : 1080×2400 ou 1440×3200.
- Bordures arrondies (optionnel).
- Floutage automatique des données sensibles.
- Légende en dessous, jamais sur l’image.

Structure de fichier :

`
image-android-[fonction]-[version]-v1.png
`

Exemple :  
image-android-settings-permissions-android10-v1.png

---

Modèles pour les photos

Photo d’appareil ou de manipulation

Recommandations :
- Fond neutre (gris, noir ou blanc).
- Appareil centré, bien éclairé.
- Pas de reflets sur l’écran.
- Orientation paysage pour les appareils, portrait pour les détails.

Gabarit de nommage :

`
photo-device-[modele]-[action]-v1.jpg
`

Exemple :  
photo-device-pixel6-bootloader-v1.jpg

---

Modèles pour les vidéos

Vidéo de démonstration technique

Structure :
- Introduction courte (1–2 secondes).
- Démonstration claire, gestes lents.
- Zoom sur les éléments importants.
- Sous‑titres intégrés si possible.

Nommage :

`
video-android-[fonction]-demo-v1.mp4
`

Exemple :  
video-android-adb-connection-demo-v1.mp4

---

Modèles pour les diagrammes conceptuels (non-Mermaid)

Schéma conceptuel simple

`
+-------------------+       +-------------------+
|   Concept A       | ----> |   Concept B       |
+-------------------+       +-------------------+

Description :
- A représente...
- B représente...
`

Schéma multi‑zones

`
+-------------------------------+
|           Zone 1              |
|  - Élément A                  |
|  - Élément B                  |
+-------------------------------+
|           Zone 2              |
|  - Élément C                  |
|  - Élément D                  |
+-------------------------------+
`

---

Modèles de cohérence visuelle

Palette de couleurs

| Élément | Couleur |
|--------|---------|
| Fond sombre | #222222 |
| Bloc principal | #333333 |
| Détail | #444444 |
| Texte clair | #EEEEEE |
| Accent Android | #3DDC84 |
| Accent technique | #00AEEF |

---

Marges et espacements

- Marges internes : 16–24 px.
- Espacement entre blocs : 24–32 px.
- Éviter les éléments collés ou trop serrés.

---

Typographie

- Sans-serif moderne (Roboto, Inter, Noto Sans).
- Taille minimale dans les schémas : 14 px.
- Taille minimale dans les diagrammes : 12 px.

---

Iconographie

- Icônes simples, monochromes.
- Style linéaire (outline).
- Pas d’icônes réalistes ou trop détaillées.

---

Modèles de fichiers prêts à copier

Template Mermaid (vide)

`mermaid
flowchart TD

    A[Titre]:::root

    classDef root fill:#222,color:#fff,stroke:#555;
`

Template image (description)

`
Nom : image-[sujet]-v1.png
Format : PNG
Taille : 1200 px
Palette : #222 / #333 / #444 / #3DDC84
Notes : 
- Ajouter légende dans le fichier .md
- Flouter données sensibles
`

Template vidéo (description)

`
Nom : video-[sujet]-demo-v1.mp4
Durée : 30–90 s
Résolution : 1080p
Audio : facultatif
Sous-titres : recommandés
`

---
