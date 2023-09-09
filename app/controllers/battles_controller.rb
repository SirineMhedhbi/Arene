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

      @weapon1 = Weapon.find(params[:weapon1_id]) if params[:weapon1_id].present?
      @weapon2 = Weapon.find(params[:weapon2_id]) if params[:weapon2_id].present?

      @shield1 = Shield.find(params[:shield1_id]) if params[:shield1_id].present?
      @shield2 = Shield.find(params[:shield2_id]) if params[:shield2_id].present?
      if (@weapon1.present? && @shield1.present?)
        @character1.update(weapon: @weapon1, shield: @shield1)
      elsif @weapon1.present?
        @character1.update(weapon: @weapon1)
      elsif @shield1..present?
        @character1.update(shield: @shield1)
      end
      if (@weapon2.present? && @shield2.present?)
        @character2.update(weapon: @weapon2, shield: @shield2)
      elsif @weapon2.present?
        @character2.update(weapon: @weapon2)
      elsif @shield2.present?
        @character2.update(shield: @shield2)
      end
      results = battle(@character1, @character2)
      @battle = Battle.create(winner: results[0], loser: results[1])

      redirect_to battle_url(@battle)
    end

    def show
    end

    def statistics
      @characters = Character.paginate(page: params[:page], per_page: 10)
    end

    def history
      @battles = Battle.paginate(page: params[:page], per_page: 10).order(created_at: :desc)
    end

    private
      def set_battle
        @battle = Battle.find(params[:id])
      end
end
