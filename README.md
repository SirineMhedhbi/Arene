

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
