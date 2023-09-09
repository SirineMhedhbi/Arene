# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    character1 = Character.create(name: 'Sirine', hp: 12, attack: 4, exp: 0)
    character2 = Character.create(name: 'Coralie', hp: 10, attack: 3, exp: 0)

    weapon1 = Weapon.create(name: 'Arme1', damage: 2)
    weapon2 = Weapon.create(name: 'Arme2', damage: 3)

    shield1 = Shield.create(name: 'Bouclier1', damage_reduction: 3)
    shield2 = Shield.create(name: 'Bouclier1', damage_reduction: 2)
