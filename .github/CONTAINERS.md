# Isolation et « containers » dans Android

Android n’utilise pas des containers au sens classique (Docker, LXC), mais repose sur un ensemble de mécanismes d’isolation qui remplissent un rôle similaire : séparer les applications, limiter les privilèges et protéger les données. Ce document décrit ces mécanismes et leur fonctionnement dans l’écosystème Android.

---

## 1. Modèle multi-utilisateur et UID par application

Android attribue un **UID Linux unique à chaque application** installée.  
Ce mécanisme constitue la base de l’isolation :

- Chaque app possède son propre espace de fichiers.
- Les processus d’une app ne peuvent pas accéder à ceux d’une autre.
- Les permissions sont appliquées au niveau du noyau Linux.

**Impact :**  
Chaque application fonctionne comme si elle était dans un mini‑container Linux dédié.

---

## 2. SELinux : confinement obligatoire

Depuis Android 5.0, Android fonctionne en **SELinux Enforcing**, ce qui ajoute une couche de confinement obligatoire (MAC).

### Rôle de SELinux
- Définir ce que chaque processus peut faire.
- Empêcher les accès non autorisés même si une app est compromise.
- Limiter les actions des services système.

### Domaines SELinux courants
- `untrusted_app` : apps classiques
- `system_app` : apps système
- `init` : processus d’initialisation
- `vendor_*` : composants OEM

**Impact :**  
SELinux agit comme un container logique autour de chaque domaine d’exécution.

---

## 3. Sandboxing applicatif

Le sandbox Android combine :

- UID unique
- SELinux
- Permissions déclaratives (manifest)
- API contrôlées par le framework
- Restrictions réseau et stockage

### Caractéristiques
- Pas d’accès direct au système de fichiers global.
- Accès réseau contrôlé par les API.
- Accès matériel (caméra, micro, capteurs) soumis à autorisation.

**Impact :**  
Chaque application est enfermée dans un environnement contrôlé, comparable à un container applicatif.

---

## 4. Namespaces Linux

Android utilise plusieurs **namespaces** du noyau Linux, notamment :

- **Mount namespaces** : séparation des points de montage.
- **PID namespaces** : visibilité limitée des processus.
- **User namespaces** (partiellement utilisés selon versions).
- **Network namespaces** (utilisés dans certaines fonctionnalités comme VPN).

**Impact :**  
Les namespaces renforcent l’isolation entre processus, comme dans les containers traditionnels.

---

## 5. Isolations spécialisées

### 5.1. Isolated Processes
Certaines apps peuvent lancer des processus isolés :

- Pas d’accès au stockage.
- Pas d’accès aux permissions de l’app principale.
- Utilisés pour exécuter du code non fiable.

### 5.2. WebView sandbox
Le moteur WebView fonctionne dans un processus isolé :

- Séparation stricte du contenu web.
- Protection contre les exploits du navigateur.

### 5.3. Work profiles (Android Enterprise)
Les profils professionnels créent un environnement séparé :

- Applications du travail isolées des apps personnelles.
- Données chiffrées séparément.
- Politiques de sécurité dédiées.

---

## 6. Containers OEM et virtualisation

Certains constructeurs ajoutent leurs propres mécanismes :

- **Samsung Knox** : container sécurisé matériel + logiciel.
- **Huawei Secure Zone** : environnement isolé.
- **Virtualization Framework (Android 13+)** : exécution d’OS invités légers.

### Virtualization Framework
Introduit dans Android 13, il permet :

- Lancement de micro‑VMs basées sur KVM.
- Exécution de services sensibles dans un environnement isolé.
- Séparation matérielle renforcée.

**Impact :**  
Android se rapproche progressivement d’un modèle de containers/VMs au sens strict.

---

## 7. Comparaison avec Docker / LXC

| Fonction | Android | Docker / LXC |
|---------|---------|--------------|
| Isolation | UID + SELinux + sandbox | Namespaces + cgroups |
| Objectif | Sécurité des apps | Déploiement d’applications |
| Contrôle | Framework Android | Administrateur système |
| Virtualisation | Partielle (micro‑VMs Android 13+) | Complète selon configuration |
| Accès root | Interdit par défaut | Administrateur root |

---

## 8. Résumé

Android n’utilise pas des containers classiques, mais une combinaison de technologies qui remplissent le même rôle :

- UID unique par application  
- SELinux en mode enforcing  
- Sandboxing strict  
- Namespaces Linux  
- Processus isolés  
- Virtualisation légère (Android 13+)  

L’ensemble forme une architecture d’isolation robuste, essentielle à la sécurité du système.

---

## 9. Pistes d’approfondissement

- Analyse des politiques SELinux (`sepolicy`)
- Étude du Virtualization Framework
- Comparaison entre sandbox Android et iOS
- Analyse des profils professionnels (Android Enterprise)
