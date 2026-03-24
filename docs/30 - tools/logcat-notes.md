# 📡 Logcat — Analyse des locat

---

🧩 1. Qu’est‑ce que logcat ?

Logcat est un flux continu de messages générés par :

- le framework Android  
- les applications  
- les services système  
- le kernel (via dmesg)  
- les bibliothèques natives  

Il est indispensable pour diagnostiquer, analyser et comprendre le comportement du système.

---

🧪 2. Commandes essentielles

📥 Lire les logs en direct
`
adb logcat
`

🎯 Filtrer par tag
`
adb logcat -s ActivityManager
`

🎨 Filtrer par niveau
`
adb logcat *:W
`

Niveaux disponibles :
- V — Verbose  
- D — Debug  
- I — Info  
- W — Warning  
- E — Error  
- F — Fatal  

---

🧬 3. Structure d’un message logcat

Un message logcat contient :

- timestamp  
- PID / TID  
- niveau  
- tag  
- message

Exemple :
`
01-01 12:34:56.789  1234  5678 I ActivityManager: Start proc com.app.test
`

---

🧠 4. Tags importants à connaître

| Tag | Rôle |
|------|------|
| ActivityManager | Gestion des activités et processus |
| WindowManager | Gestion des fenêtres et UI |
| PackageManager | Installation / chargement des apps |
| SystemServer | Services système |
| AudioFlinger | Audio |
| SurfaceFlinger | Rendu graphique |
| WifiHAL | Wi‑Fi |
| PowerManager | Énergie |

---

🛠️ 5. Commandes avancées

📁 Exporter les logs
`
adb logcat -d > logs.txt
`

🔍 Filtrer par application
`
adb logcat --pid=$(adb shell pidof com.package.name)
`

🧹 Effacer les logs
`
adb logcat -c
`

---

🛡️ 6. Sécurité & confidentialité

- Les logs peuvent contenir des informations sensibles  
- Certaines apps abusent des logs (mauvaises pratiques)  
- Android limite l’accès aux logs depuis Android 4.1+  
- Les apps non système ne voient que leurs propres logs  

---

> “Logcat est la voix du système. Celui qui l’écoute comprend tout.” — The MadDoG
`

---
