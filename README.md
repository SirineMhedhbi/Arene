Ce repo contient le squelette d'une application à compléter dans le cadre du processus de recrutement des développeurs.

Plus d'infos à propos du poste de développeur chez Captain Contrat sur [notre page jobs](https://jobs.captaincontrat.com/)

# Captain Challenge

Bienvenue jeune moussaillon !

Pour intégrer le navire Captain Contrat, tu dois créer une arène où deux héros pourront s'affronter !

Pour ce faire, nous avons mis à ta disposition une appli vide qu'il te faudra compléter.

## Résultat attendu

Le but de ce challenge est de tester ta capacité à monter une petite application [dans le respect des bonnes pratiques](https://medium.com/captain-contrat-tech).  
On te propose quatre étapes clés, avec des bonus facultatifs.

Nous nous intéresserons tout particulièrement aux choix de conception que tu feras, comment tu abordes les fonctionnalités à développer et ta connaissance des outils que tu utilises.

## Tes armes

- Ruby
- Rails
- git

## Étapes

### 0. ~~Forker~~ Cloner ce repo

Pour commencer, il faudra cloner (ne _PAS_ forker) ce repo afin d'y ajouter tes modifications.

### 1. Page d'accueil statique

C'est l'accueil de l'arène, d'où nous pourrons lancer les combats.  
Le but est donc de modifier (ou supprimer/remplacer) la page d'accueil existante.

Bonus :

- Un petit texte d'introduction de ton cru. C'est plus fun.
- Joli design (mais n'y perd pas trop de temps non plus)

### 2. Pouvoir créer un personnage

Données requises :

- Nom
- Points de vie
- Points d'attaque

Assure-toi qu'il n'y ait pas de grand déséquilibre entre combattants.

Bonus :

- L'arène n'est pas vide au premier démarrage de l'appli.
- Les persos ont une photo de profil (ou de face)
- Crud complet des personnages
- Ajouter d'autres caractéristiques de ton choix aux personnages

### 3. READY? FIGHT!

Pouvoir choisir deux personnages et les faire combattre, puis afficher le gagnant avec un récapitulatif du combat.

Bonus :

- Historique des combats qui ont eu lieu
- Ajout de points d'expérience (mais pourquoi faire ?)
- Statistiques des combats : taux de victoire par perso et tout ça

### 4. Des armes

Pouvoir assigner une arme aux personnages avant le combat.

Bonus :

- Il n'y a pas que les armes dans la vie, il y a des boucliers aussi
- Pouvoir utiliser plusieurs équipements

### Solution utilisée:

# Application de Combat de Personnages

Cette application permet aux personnages de s'affronter dans des combats en fonction de leurs points de vie, de leurs points d'attaque et de leurs points d'expérience. L'application utilise quatre modèles principaux pour gérer les personnages, les armes, les boucliers et les combats.

## Modèles

### Character

Le modèle `Character` représente un personnage dans l'application. Chaque personnage a un nom, des points de vie (HP), des points d'attaque (Attack) et des points d'expérience (Exp). Ces caractéristiques déterminent la capacité du personnage à participer à un combat.

### Weapon

Le modèle `Weapon` représente une arme que les personnages peuvent équiper. Chaque arme a un nom et un niveau de dégâts (Damage) qui affectent les performances du personnage dans un combat.

### Shield

Le modèle `Shield` représente un bouclier que les personnages peuvent équiper. Chaque bouclier a un nom et un niveau de réduction de dégâts (Damage Reduction) qui réduit les dégâts subis par le personnage dans un combat.

### Battle

Le modèle `Battle` enregistre les résultats des combats entre personnages. Chaque combat a un gagnant (Winner) et un perdant (Loser), qui sont des références aux personnages. Les résultats sont déterminés en fonction des caractéristiques des personnages, des armes et des boucliers.

## Algorithme de Combat

L'algorithme de combat de l'application prend en compte les points de vie, les points d'attaque et les points d'expérience des personnages, ainsi que les armes et les boucliers qu'ils portent. Les détails de l'algorithme sont implémentés dans le code de l'application.

## Comment Utiliser l'Application

1. Créez des personnages en utilisant le formulaire ou l'interface d'administration.
2. Équipez les personnages avec des armes et des boucliers.
3. Initiez un combat entre deux personnages.
4. Consultez les résultats du combat pour déterminer le gagnant et le perdant.

## Dépendances

L'application utilise Ruby on Rails et une base de données SQL pour gérer les données des personnages, des armes, des boucliers et des combats. Veuillez consulter le fichier Gemfile pour connaître les dépendances spécifiques.

N'hésitez pas à explorer le code source de l'application pour plus de détails sur son fonctionnement.

## Installation

Suivez ces étapes pour installer et exécuter l'application localement sur votre machine :

1. **Installer Ruby et Rails :**

   - Assurez-vous d'avoir Ruby et Rails installés sur votre système. Si ce n'est pas le cas, vous pouvez les installer en suivant les instructions sur le site officiel de Ruby et Rails.

2. **Cloner le Projet :**

   - Clonez ce dépôt en utilisant la commande Git suivante :
     ```
     git clone https://github.com/SirineMhedhbi/Captain-contrat-test.git
     ```

3. **Installer les Dépendances :**

   - Naviguez dans le répertoire du projet :
     ```
     cd mon_projet
     ```
   - Installez les gemmes (bibliothèques Ruby) nécessaires avec la commande :
     ```
     bundle install
     ```

4. **Créer la Base de Données :**

   - Créez la base de données en exécutant :
     ```
     rails db:create
     ```
   - Exécutez ensuite les migrations pour créer les tables de base de données :
     ```
     rails db:migrate
     ```
   - Remplir la base de données :

     ```
     rails db:seed
     ```

   - Installer nodes modules :

     ```
     yarn
     ```

5. **Lancer l'Application :**

   - Démarrez le serveur de développement avec la commande :
     ```
     rails server
     ```
   - Accédez à l'application dans votre navigateur à l'adresse : `http://localhost:3000`

## Auteur

Sirine Mhedhbi
