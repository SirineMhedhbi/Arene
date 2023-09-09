class Shield < ApplicationRecord
    belongs_to :character, optional: :true
end
