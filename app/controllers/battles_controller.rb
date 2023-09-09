class BattlesController < ApplicationController
  include BattlesHelper
  before_action :set_battle, only: %i[ show]
    def new
      @characters = Character.all
      @weapons = Weapon.all
    end
  
    def create
      @character1 = Character.find(params[:character1_id])
      @character2 = Character.find(params[:character2_id])

      @weapon1 = Weapon.find(params[:weapon1_id])
      @weapon2 = Weapon.find(params[:weapon2_id])

      @shield1 = Shield.find(params[:shield1_id])
      @shield2 = Shield.find(params[:shield2_id])

      @character1.update(weapon: @weapon1, shield: @shield1)
      @character2.update(weapon: @weapon2, shield: @shield2)
      results = battle(@character1, @character2)
      @battle = Battle.create(winner: results[0], loser: results[1])

      redirect_to battle_url(@battle)
    end

    def show
    end

    def statistics
      @characters = Character.all
    end

    def history
      @battles = Battle.all.order(created_at: :desc)
    end

    private
      def set_battle
        @battle = Battle.find(params[:id])
      end
end
