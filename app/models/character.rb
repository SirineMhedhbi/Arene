class Character < ApplicationRecord
    has_one :weapon
    has_many :battles
end
