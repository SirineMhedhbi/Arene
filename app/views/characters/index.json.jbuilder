json.array! @characters.where.not(id: params[:selectedValue]), partial: "characters/character", as: :character

