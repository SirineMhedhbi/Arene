class Weapon < ApplicationRecord
    belongs_to :character, optional: :true
end
