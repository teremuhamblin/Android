# ⚡ Fastboot — Bases essentielles
### _The MadDoG Android System — Tools Module_

Fastboot est un protocole bas niveau utilisé pour flasher et gérer les partitions.

---

## 🔌 1. Accéder au mode fastboot

- Éteindre l’appareil  
- Maintenir Volume‑Bas + Power  
- Connecter en USB  

---

## 🧪 2. Commandes essentielles
`
fastboot devices
fastboot reboot
fastboot reboot bootloader
fastboot flash boot boot.img
fastboot erase userdata
`
---

## 🛡️ 3. Sécurité

- Bootloader verrouillé = protection  
- Déverrouillage efface `/data`  

---

> _“Fastboot, c’est la porte du bas niveau.” — The MadDoG_
