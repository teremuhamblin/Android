# 🧱 Partitions Android
### _The MadDoG Android System — System Module_

Le stockage d’un appareil Android est divisé en plusieurs **partitions**, chacune ayant un rôle précis dans le fonctionnement du système.  
Comprendre ces partitions permet de mieux saisir la structure interne d’Android, son processus de démarrage et ses mécanismes de sécurité.

---

## 🗂️ 1. Vue d’ensemble

Android utilise un schéma de partitions inspiré de Linux, mais adapté aux besoins mobiles :

- séparation stricte du système et des données utilisateur  
- modularité pour les constructeurs (vendor, product)  
- sécurité renforcée (dm‑verity, AVB)  
- compatibilité avec les mises à jour OTA  

---

## 📦 2. Partitions principales

### **1. boot**
Contient :
- le kernel Linux  
- le ramdisk  
- les scripts init essentiels  

Sans cette partition, l’appareil ne peut pas démarrer.

---

### **2. system**
Contient :
- le framework Android  
- les applications système  
- les bibliothèques natives  

C’est le cœur du système Android.

---

### **3. vendor**
Contient :
- les HAL (Hardware Abstraction Layer)  
- les drivers spécifiques au constructeur  
- les modules matériels  

Cette partition permet de séparer le code Google du code constructeur.

---

### **4. product**
Contient :
- les personnalisations OEM  
- les apps préinstallées  
- les configurations régionales  

Introduite avec Project Treble.

---

### **5. data**
Contient :
- les données utilisateur  
- les apps installées  
- les paramètres système  
- les bases de données  

C’est la partition la plus sensible et la plus volumineuse.

---

### **6. recovery**
Contient :
- l’environnement de récupération  
- les outils de maintenance  
- les scripts de mise à jour OTA  

Permet de restaurer ou réparer l’appareil.

---

### **7. metadata**
Contient :
- les informations de chiffrement (FBE)  
- les métadonnées Verified Boot  

Indispensable pour la sécurité moderne d’Android.

---

## 🔐 3. Sécurité des partitions

Android protège ses partitions via :

- **dm‑verity** : vérification d’intégrité en temps réel  
- **AVB (Android Verified Boot)** : chaîne de confiance complète  
- **Chiffrement FBE** : séparation par utilisateur  
- **SELinux** : contrôle d’accès strict  

---

## 🧭 4. Pourquoi documenter les partitions ?

Pour comprendre :

- comment Android organise son stockage  
- comment les mises à jour fonctionnent  
- comment le système se protège  
- comment diagnostiquer un problème de boot  

---

> _“Les partitions sont les fondations invisibles du système.” — The MadDoG_
