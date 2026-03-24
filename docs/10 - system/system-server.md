# 🧠 System Server
### _The MadDoG Android System — System Module_

Le **System Server** est l’un des processus les plus importants d’Android.  
Il orchestre les services essentiels du framework.

---

## 🧩 1. Rôle du System Server

Il :

- démarre les services système  
- gère les activités et fenêtres  
- contrôle l’énergie, les capteurs, les apps  
- supervise les permissions  
- coordonne les interactions internes  

---

## 🧬 2. Services principaux

| Service | Rôle |
|--------|------|
| **ActivityManager** | Gestion des apps et activités |
| **WindowManager** | Gestion des fenêtres |
| **PackageManager** | Installation / chargement des apps |
| **PowerManager** | Gestion de l’énergie |
| **InputManager** | Gestion des entrées |
| **DisplayManager** | Gestion des écrans |

---

## ⚙️ 3. Démarrage

Le System Server est lancé par Zygote :

1. Zygote fork → System Server  
2. Chargement des services Java  
3. Initialisation des threads  
4. Lancement du loop principal  

---

## 🛡️ 4. Sécurité

- SELinux  
- Permissions  
- Isolation des services  
- Vérification des appels Binder  

---

> _“System Server est le cerveau du système.” — The MadDoG_
