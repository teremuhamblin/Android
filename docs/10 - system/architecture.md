# 🧬 Architecture du système Android
### _The MadDoG Android System — System Module_

Android repose sur une architecture modulaire, pensée pour la performance, la sécurité et la compatibilité avec une grande variété d’appareils.

---

## 🏛️ 1. Vue en couches

L’architecture Android est organisée en **six couches principales** :

1. **Linux Kernel**  
2. **Hardware Abstraction Layer (HAL)**  
3. **Native Libraries**  
4. **Android Runtime (ART)**  
5. **Framework Android**  
6. **Applications**

---

## 🐧 2. Linux Kernel

Le kernel fournit :

- gestion mémoire  
- gestion des processus  
- drivers matériels  
- sécurité (SELinux, namespaces)  
- gestion du réseau  

Android utilise un kernel modifié pour les besoins mobiles.

---

## 🔌 3. HAL — Hardware Abstraction Layer

Le HAL permet :

- d’abstraire le matériel  
- de fournir des modules standardisés  
- d’éviter que les apps accèdent directement au hardware  

Exemples de modules HAL :

- audio  
- caméra  
- capteurs  
- GPS  
- Wi‑Fi  

---

## 📚 4. Native Libraries

Android s’appuie sur des bibliothèques C/C++ :

- **libc** (Bionic)  
- **OpenGL / Vulkan**  
- **WebView (Chromium)**  
- **Media codecs**  
- **SQLite**  

Elles fournissent les fondations du système.

---

## ⚙️ 5. Android Runtime (ART)

ART exécute les applications :

- compilation AOT (Ahead‑Of‑Time)  
- compilation JIT (Just‑In‑Time)  
- garbage collector optimisé  
- partage de mémoire via Zygote  

ART remplace l’ancien Dalvik.

---

## 🧠 6. Framework Android

Le framework fournit les API utilisées par les applications :

- ActivityManager  
- PackageManager  
- WindowManager  
- PowerManager  
- Telephony  
- InputManager  

C’est le cerveau du système.

---

## 📱 7. Applications

Deux types :

- **Apps système** (Paramètres, SystemUI, Launcher)  
- **Apps utilisateur** (installées via Play Store ou APK)

Elles reposent toutes sur le framework et ART.

---

## 🧭 8. Pourquoi comprendre l’architecture ?

Pour :

- analyser le comportement du système  
- comprendre les interactions internes  
- diagnostiquer des problèmes  
- explorer Android de manière éclairée  

---

> _“L’architecture est la carte du territoire. Celui qui la lit ne se perd jamais.” — The MadDoG_
