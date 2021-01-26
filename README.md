# Déploiement d'une infrastructure Windows Virtual Desktop<br/>

Exemple de chaîne de déploiement complète d'une infrastructure Windows Virtual Desktop. Ce Workflows exécute quatre jobs:<br/>
- Build d'une image Windows 10 multi-sessions avec Packer :
    - L'installation FSLogix
    - Player VLC
- Test/What-If de template ARM
    - Génération du "Token Expiration Time"
    - Test & What-If du Template ARM
    - Notifacation via Webhook dans Slack 
- Déploiement du template ARM
    - "Deployment Approuval"
    - Génération du "Token Expiration Time"
    - Déploiement du template ARM
- Assignation d'un groupe utilisateurs à "l'application group"
    - Assignation d'un groupe utilsateur en Powershell
    - Notifacation via Webhook dans Slack

Prérequis (WVD):<br/>
-- Un controleur de domaine (Windows Serveur avec le rôle ADDS) dans Azure<br/>
-- Le domaine ADDS (Windows Server) doit être synchronisé avec AD Connect<br/>
-- Un "virtual network/subnet" sur lequel on peut joindre de controleur de domaine<br/>
-- Un Service Principal owner de l'abonnement Azure

Prérequis GitHub Actions:<br/>

   
