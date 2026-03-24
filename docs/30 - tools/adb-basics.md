# 🛠️ ADB — Bases essentielles
### _The MadDoG Android System — Tools Module_

ADB (Android Debug Bridge) est l’outil principal pour communiquer avec un appareil Android depuis un ordinateur.  
Ce module présente les commandes essentielles et leur utilité.

---

## 🔌 1. Qu’est‑ce qu’ADB ?

ADB est un outil en ligne de commande permettant :

- d’envoyer des instructions à un appareil  
- d’explorer le système de fichiers  
- de lire les logs  
- d’installer/désinstaller des apps  
- d’exécuter des commandes shell  

Il fonctionne via USB ou Wi‑Fi.

---

## 📡 2. Activer ADB sur Android

1. Activer les **Options développeur**  
2. Activer **Débogage USB**  
3. Connecter l’appareil  
4. Autoriser l’empreinte RSA

---

## 🧪 3. Commandes essentielles

### 🔍 Vérifier la connexion
`
adb devices
`

📂 Explorer le système
`
adb shell
ls
cd /sdcard/
`

📤 Extraire un fichier
`
adb pull /sdcard/fichier.txt
`

📥 Envoyer un fichier
`
adb push fichier.txt /sdcard/
`

🔄 Redémarrer
`
adb reboot
adb reboot recovery
adb reboot bootloader
`

📦 Installer une application
`
adb install monapp.apk
`

🗑️ Désinstaller une application
`
adb uninstall com.package.name
`

---

## 🧠 4. ADB Shell — commandes utiles

Dans le shell :

- `top` → processus en temps réel  
- `logcat` → logs système  
- `getprop` → propriétés système  
- `pm list packages` → liste des apps  
- `df` → stockage  
- `id` → UID/GID  

---

## 🛡️ 5. Sécurité & limites

- ADB donne un accès puissant : à utiliser avec prudence  
- Certaines commandes sont bloquées sans root  
- Le débogage USB doit être désactivé quand inutile  

---

> _“ADB est la passerelle. Celui qui la maîtrise contrôle la machine.” — The MadDoG_










