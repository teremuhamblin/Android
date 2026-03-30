📁 Emplacement pour tous les fichiers .mmd

L’endroit idéal dans ton arborescence est :

`
The-MadDoG-Android-System/
└── media/
    └── diagrams/
`

Ce dossier devient le référentiel unique de tous tes diagrammes Mermaid. Chaque fichier .mmd correspond à un diagramme thématique, et les fichiers .md de la documentation peuvent ensuite les intégrer ou les référencer.

📂 Structure complète des fichiers Mermaid

Voici la liste des fichiers .mmd à créer, avec leur emplacement exact :

`
media/
└── diagrams/
    ├── security-architecture.mmd        # Vue d’ensemble de la sécurité Android
    ├── sandbox-overview.mmd             # Diagramme du sandbox Android
    ├── containers-android.mmd           # Isolation et pseudo-containers
    ├── permissions-flow.mmd             # Modèle de permissions Android
    ├── boot-chain-trust.mmd             # Chaîne de confiance du boot (AVB)
    ├── data-encryption-flow.mmd         # Chiffrement FBE et KeyStore
    └── virtualization-android.mmd       # Virtualization Framework (Android 13+)
`

🧩 Rôle de chaque diagramme

- security-architecture.mmd : la carte maîtresse de toutes les couches de sécurité.
- sandbox-overview.mmd : l’isolation applicative et les mécanismes internes.
- containers-android.mmd : comparaison Android vs containers classiques.
- permissions-flow.mmd : cycle complet des permissions (manifest → runtime → enforcement).
- boot-chain-trust.mmd : Verified Boot, dm-verity, TEE.
- data-encryption-flow.mmd : FBE, clés dérivées, KeyStore matériel.
- virtualization-android.mmd : micro‑VMs et services isolés (Android 13+).

🧭 Intégration dans la documentation

Chaque fichier .md dans docs/20-security/ peut :

- intégrer directement le diagramme via un bloc mermaid,
- ou pointer vers le fichier .mmd dans media/diagrams/.

---
