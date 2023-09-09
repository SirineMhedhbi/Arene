class BattlesController < ApplicationController
    def new
      @characters = Character.all
    end
  
    def create
      @character1 = Character.find(params[:character1_id])
      @character2 = Character.find(params[:character2_id])
      
      # Logique de combat
      # ... todo : algorithme de combat to voir le gangant
       
      
      
      # Afficher les résultats
      render 'results'
    end
  end
