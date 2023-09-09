class Battle < ApplicationRecord
    belongs_to :winner, class_name: 'Character', foreign_key: :winner
    belongs_to :loser, class_name: 'Character', foreign_key: :loser

    after_save :experience_point

    def experience_point
        winner.exp += 0.5
        winner.hp += winner.hp * winner.exp / 100
        winner.save
    end
end
