class Battle < ApplicationRecord
    belongs_to :winner, class_name: 'Character', foreign_key: :winner
    belongs_to :loser, class_name: 'Character', foreign_key: :loser
end
