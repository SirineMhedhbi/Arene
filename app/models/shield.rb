class Shield < ApplicationRecord
    belongs_to :character, optional: :true

    #validations
    validates :name, presence: true, length: { minimum: 2, maximum: 50 }
    validates :damage_reduction, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
