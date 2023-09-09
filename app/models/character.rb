class Character < ApplicationRecord

    has_one :weapon
    has_many :battles
    has_one :shield
    has_many :battles_as_winner, class_name: 'Battle', foreign_key: :winner
    has_many :battles_as_loser, class_name: 'Battle', foreign_key: :loser
    has_one_attached :avatar


    #validation
    validates :name, presence: true, length: { minimum: 2, maximum: 50 }
    validates :hp, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :attack, presence: true, numericality: { greater_than_or_equal_to: 0 }
    
    def win_rate
        total_battles = battles_as_winner.count + battles_as_loser.count
        return 0 if total_battles.zero?

        (battles_as_winner.count.to_f / total_battles) * 100
    end

    def lose_rate
        total_battles = battles_as_winner.count + battles_as_loser.count
        return 0 if total_battles.zero?
    
        (battles_as_loser.count.to_f / total_battles) * 100
    end

    def total_battles
        battles_as_winner.count + battles_as_loser.count
    end

    def avatar_url
        avatar.attached? ? avatar : 'default_avatar.png'
    end

end
