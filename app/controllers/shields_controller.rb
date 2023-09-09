class ShieldsController < ApplicationController
  before_action :set_shield, only: %i[ show edit update destroy ]

  def index
    @shields = Shield.all
  end

  def show
  end

  def new
    @shield = Shield.new
  end

  def edit
  end

  def create
    @shield = Shield.new(shield_params)

    respond_to do |format|
      if @shield.save
        format.html { redirect_to shield_url(@shield), notice: "Bouclier a été crée avec succès.." }
        format.json { render :show, status: :created, location: @shield }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shield.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @shield.update(shield_params)
        format.html { redirect_to shield_url(@shield), notice: "Bouclier a été modifié avec succès." }
        format.json { render :show, status: :ok, location: @shield }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shield.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @shield.destroy

    respond_to do |format|
      format.html { redirect_to shields_url, notice: "Bouclier supprimé avec succès." }
      format.json { head :no_content }
    end
  end

  private
    def set_shield
      @shield = Shield.find(params[:id])
    end

    def shield_params
      params.require(:shield).permit(:name, :damage_reduction)
    end
end
