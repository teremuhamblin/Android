# 🔐 Permissions Android
### _The MadDoG Android System — Security Module_

Les permissions Android définissent ce qu’une application est autorisée à faire.  
Elles constituent l’un des piliers de la sécurité du système.

---

## 🧩 1. Types de permissions

Android classe les permissions en plusieurs catégories :

### **1. Normales**
- Risque faible  
- Accordées automatiquement  
- Exemples : accès réseau, vibrations

### **2. Dangereuses**
- Accès à des données sensibles  
- Nécessitent l’accord explicite de l’utilisateur  
- Exemples : caméra, micro, localisation

### **3. Signature**
- Accordées uniquement si l’app partage la même signature que le système ou un composant OEM

### **4. Système / Privileged**
- Réservées aux apps système  
- Exemples : gestion des SMS, accès complet au stockage interne

---

## 🧬 2. Fonctionnement interne

Chaque application possède un **UID unique**.  
Les permissions accordées sont associées à cet UID, ce qui permet :

- l’isolation stricte entre apps  
- le sandboxing  
- la gestion fine des accès

Android applique ensuite :

- **SELinux** pour renforcer les règles  
- **AppOps** pour contrôler dynamiquement certains accès  
- **Runtime Permissions** pour les demandes en temps réel

---

## 📍 3. Permissions dangereuses (exemples)

| Groupe | Permissions |
|--------|-------------|
| **CAMERA** | Prendre des photos/vidéos |
| **LOCATION** | GPS, Wi‑Fi, réseau |
| **MICROPHONE** | Enregistrement audio |
| **STORAGE** | Lire/écrire fichiers utilisateur |
| **CONTACTS** | Lire/écrire contacts |

---

## 🛡️ 4. Bonnes pratiques (côté utilisateur)

- Vérifier les permissions avant installation  
- Révoquer les accès inutiles  
- Surveiller les apps demandant trop de privilèges  
- Utiliser les outils intégrés (Privacy Dashboard)

---

## 🧠 5. Pourquoi ce module existe dans The MadDoG Android System ?

Parce que comprendre les permissions, c’est comprendre :

- comment une app peut accéder à tes données  
- comment Android te protège  
- comment diagnostiquer un comportement suspect  
- comment garder le contrôle sur ton appareil

---

> _“La permission est un pouvoir. Celui que tu donnes, celui que tu retires.” — The MadDoG_
