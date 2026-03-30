# 10-system — Architecture système Android

## Contenu
- Boot process (bootloader → kernel → init → Zygote)
- Architecture AOSP
- Services système (SystemServer, frameworks)
- HAL, HIDL, AIDL
- Binder IPC
- Partitions (system, vendor, product, odm, system_ext)
- Gestion des permissions système

## Objectifs
- Comprendre les couches internes d’Android.
- Faciliter le développement de modules système.
- Documenter les dépendances critiques.

## Diagramme (Mermaid)
```mermaid
flowchart TD
    A[Bootloader] --> B[Kernel]
    B --> C[Init]
    C --> D[Zygote]
    D --> E[SystemServer]
    E --> F[Framework Services]
