---

# 📁 20-security/README.md

```markdown
# 20-security — Sécurité Android

## Contenu
- SELinux : policies, contexts, macros
- Verified Boot (AVB)
- KeyStore / KeyMint
- Sandboxing et isolation
- Sécurité réseau (TLS, pinning)
- Hardening kernel & userspace
- Threat model du projet

## Objectifs
- Documenter les mécanismes de sécurité natifs.
- Définir les politiques de durcissement.
- Assurer la conformité et la robustesse du système.

## Diagramme (Mermaid)
```mermaid
flowchart LR
    A[Bootloader] --> B[AVB Verification]
    B --> C[Kernel]
    C --> D[SELinux Policies]
    D --> E[System Services]
