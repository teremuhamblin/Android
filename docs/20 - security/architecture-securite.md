# Architecture de sécurité d’Android

La sécurité d’Android repose sur une architecture multicouche conçue pour protéger l’utilisateur, les données, les applications et le système. Cette architecture combine des mécanismes du noyau Linux, des protections logicielles, des contrôles matériels et des services cryptographiques avancés.

---

## 1. Vision globale

L’architecture de sécurité d’Android s’appuie sur quatre piliers :

- **Isolation** (sandbox, UID, SELinux)
- **Contrôle d’accès** (permissions, API)
- **Intégrité du système** (Verified Boot, partitions protégées)
- **Protection des données** (chiffrement, KeyStore)

Ces couches fonctionnent ensemble pour réduire la surface d’attaque.

---

## 2. Sécurité du noyau Linux

Android hérite de la sécurité du noyau Linux :

- Gestion des utilisateurs et groupes
- Permissions POSIX
- Namespaces
- Cgroups
- ASLR (Address Space Layout Randomization)
- Protections mémoire (NX, stack canaries)

Le noyau constitue la base de l’isolation entre processus.

---

## 3. SELinux en mode enforcing

SELinux impose des règles strictes :

- Définition de domaines d’exécution
- Contrôle des interactions entre processus
- Limitation des accès aux ressources système
- Protection contre les escalades de privilèges

Depuis Android 5.0, SELinux est obligatoire et non désactivable.

---

## 4. Verified Boot et intégrité du système

Android utilise un mécanisme d’amorçage sécurisé :

- Vérification cryptographique de chaque étape du boot
- Protection contre les modifications non autorisées
- Partition système en lecture seule (A/B)
- Détection des corruptions (dm-verity)

Cela empêche l’injection de code malveillant au niveau système.

---

## 5. Chiffrement des données

Android chiffre les données utilisateur :

- **FBE (File-Based Encryption)** depuis Android 7+
- **Clés dérivées du code de déverrouillage**
- **KeyStore matériel** (TEE ou StrongBox)
- Chiffrement automatique sur la majorité des appareils

Les données restent protégées même en cas de vol de l’appareil.

---

## 6. Permissions et contrôle d’accès

Le modèle de permissions protège les ressources sensibles :

- Permissions runtime
- Permissions dangereuses (caméra, micro, localisation…)
- Restrictions d’arrière-plan
- Limitation des accès aux journaux et identifiants

Les apps ne peuvent accéder qu’aux ressources explicitement autorisées.

---

## 7. Services de sécurité du framework

Le framework Android ajoute des protections :

- Vérification des signatures d’applications
- API restreintes pour les actions sensibles
- Gestion des certificats
- Vérification des intents et des IPC

Cela empêche les apps de contourner le sandbox.

---

## 8. Sécurité matérielle

Android exploite des composants matériels dédiés :

- **TEE (Trusted Execution Environment)**  
  Exécution sécurisée de code sensible.

- **StrongBox**  
  Stockage matériel des clés cryptographiques.

- **Fingerprint / Face Unlock**  
  Traitement biométrique isolé.

- **Hardware-backed keystore**  
  Clés inexportables.

---

## 9. Google Play Protect et écosystème

Play Protect ajoute une couche de sécurité dynamique :

- Analyse des applications
- Détection de comportements malveillants
- Vérification des APK installés
- Protection contre les apps potentiellement dangereuses

Il s’agit d’une défense active et continue.

---

## 10. Résumé de l’architecture

Android combine :

- Sécurité du noyau Linux  
- SELinux enforcing  
- Verified Boot  
- Chiffrement avancé  
- Permissions strictes  
- API contrôlées  
- Sécurité matérielle  
- Analyse dynamique (Play Protect)

Cette architecture multicouche rend Android résilient face aux attaques modernes.
