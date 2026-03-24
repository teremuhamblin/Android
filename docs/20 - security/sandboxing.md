# 🛡️ Sandboxing Android
### _The MadDoG Android System — Security Module_

Le **sandboxing** est l’un des piliers de la sécurité Android.  
Il garantit qu’aucune application ne peut accéder aux données ou ressources d’une autre sans autorisation explicite.

---

## 🧩 1. Principe fondamental

Chaque application Android fonctionne dans un **environnement isolé**, appelé sandbox.

Cette isolation repose sur :

- un **UID unique** attribué à chaque app  
- des permissions strictes  
- SELinux en mode enforcing  
- un système de fichiers cloisonné  
- des processus séparés  

---

## 🔐 2. Isolation par UID

Lorsqu’une application est installée :

- Android lui attribue un **UID Linux unique**  
- cet UID définit ses droits d’accès  
- les fichiers créés par l’app appartiennent à cet UID  
- aucune autre app ne peut y accéder  

C’est la base du modèle de sécurité Android.

---

## 🧬 3. Rôle de SELinux

SELinux renforce le sandboxing en imposant des règles strictes :

- contrôle des accès aux fichiers  
- contrôle des accès aux sockets  
- contrôle des interactions inter‑processus  
- confinement des services système  

Android utilise SELinux en mode **enforcing**, ce qui bloque toute action non autorisée.

---

## 🔗 4. Communication entre applications

Les apps peuvent communiquer via :

- **Intents**  
- **Content Providers**  
- **Services**  
- **Broadcasts**

Mais uniquement si :

- elles possèdent les permissions nécessaires  
- elles exposent explicitement leurs interfaces  

Le sandboxing empêche toute interaction implicite.

---

## 🧱 5. Sandboxing & WebView

WebView est isolé dans un processus séparé :

- sandboxing renforcé  
- restrictions réseau  
- séparation mémoire  
- protection contre les exploits web  

---

## 🛡️ 6. Pourquoi le sandboxing est crucial

Il protège contre :

- les vols de données  
- les accès non autorisés  
- les malwares  
- les escalades de privilèges

---

> _"Le sandboxing est la cage invisible qui protège ton système" - The MadDoG_ 
