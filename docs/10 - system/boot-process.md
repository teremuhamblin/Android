# 🔄 Processus de démarrage Android
### _The MadDoG Android System — System Module_

Le processus de démarrage d’Android est une séquence complexe, optimisée pour initialiser le matériel, lancer les services essentiels et préparer l’environnement utilisateur.  
Ce document détaille chaque étape, du bootloader jusqu’au launcher.

---

## 🧬 1. Bootloader

Le **bootloader** est le premier composant exécuté après l’allumage de l’appareil.

Rôles principaux :

- Initialiser le matériel minimal  
- Charger le kernel Linux  
- Vérifier l’intégrité des partitions (AVB / Verified Boot)  
- Offrir un mode fastboot / recovery  

Le bootloader est souvent verrouillé pour empêcher la modification du système.

---

## 🐧 2. Kernel Linux

Une fois chargé, le **kernel** :

- Initialise les drivers (CPU, GPU, mémoire, stockage…)  
- Configure les espaces mémoire  
- Lance le processus `init`  
- Active SELinux en mode enforcing  

Le kernel est adapté par chaque constructeur pour son matériel.

---

## ⚙️ 3. init & fichiers de configuration

Le processus **`init`** est le premier processus utilisateur (PID 1).

Il lit :

- `init.rc`  
- `init.<hardware>.rc`  
- `init.usb.rc`  
- etc.

Ces fichiers définissent :

- les services à lancer  
- les permissions des fichiers  
- les montages de partitions  
- les règles SELinux  

---

## 🧬 4. Zygote

Zygote est un processus clé du système Android.

Il :

- précharge les classes Java du framework  
- initialise l’environnement ART  
- crée les processus d’applications via `fork()`  

Zygote permet un lancement rapide des apps grâce au partage de mémoire.

---

## 🧠 5. System Server

Le **System Server** est lancé par Zygote.

Il démarre les services essentiels :

- ActivityManager  
- PackageManager  
- WindowManager  
- PowerManager  
- InputManager  
- Telephony  
- etc.

C’est le cœur du framework Android.

---

## 🏁 6. Launcher

Enfin, Android lance :

- le **SystemUI** (barre d’état, notifications)  
- le **Launcher** (écran d’accueil)

L’appareil est alors prêt à être utilisé.

---

> _“Comprendre le boot, c’est comprendre la naissance du système.” — The MadDoG_
