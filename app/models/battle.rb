class Battle < ApplicationRecord
    belongs_to :winner, class_name: 'Character'
    belongs_to :loser, class_name: 'Character'
end
