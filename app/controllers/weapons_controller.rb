class WeaponsController < ApplicationController
  before_action :set_weapon, only: %i[ show edit update destroy ]

    def index
      @weapons = Weapon.all
      
    end
  
    def new
      @weapon = Weapon.new
    end
  
    def create
      @weapon = Weapon.new(weapon_params)
  
      if @weapon.save
        redirect_to weapons_path, notice: 'L\'arme a été crée avec succès.'
      else
        render :new
      end
    end

    def show
    end
  
    def edit
    end
  
  
    def update
      respond_to do |format|
        if @weapon.update(weapon_params)
          format.html { redirect_to weapon_url(@weapon), notice: "L\'arme a été modifiée avec succès." }
          format.json { render :show, status: :ok, location: @weapon }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @weapon.errors, status: :unprocessable_entity }
        end
      end
    end
      
  
    def destroy
      @weapon = Weapon.find(params[:id])
      @weapon.destroy
      redirect_to weapons_path, notice: 'Arme supprimé avec succès.'
    end
  
    private
    def set_weapon
      @weapon = Weapon.find(params[:id])
    end
  
    def weapon_params
      params.require(:weapon).permit(:name, :damage)
    end
  end
  
