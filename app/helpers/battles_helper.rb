
module BattlesHelper
    def calculate_damage(attacker, defender)
        # Calculate base damage
        damage = attacker.attack
    
        # Apply weapon bonus
        if attacker.weapon
            damage += attacker.weapon.damage
        end
    
        # Apply shield reduction
        if defender.shield 
            damage -= defender.shield.damage_reduction
        end
    
        # Ensure damage is non-negative
        damage = [damage, 0].max
    
        return damage += damage * attacker.exp / 100
    end
    
    def battle(character1, character2)
        while character1.hp > 0 && character2.hp > 0
            damage_to_character2 = calculate_damage(character1, character2)
            character2.hp -= damage_to_character2
        
            break if character2.hp <= 0
        
            damage_to_character1 = calculate_damage(character2, character1)
            character1.hp -= damage_to_character1
        end
    
        if character1.hp <= 0
            return [character2,character1]
        else
            return [character1,character2]
        end
    end
end