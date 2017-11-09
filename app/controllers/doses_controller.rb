class DosesController < ApplicationController
  before_action :set_dose, only: [ :destroy ]
  before_action :set_cocktail, only: [ :new ]

  def new
    @dose = Dose.new
    @dose.cocktail = @cocktail
  end

  def create
    @dose = Dose.new(dose_params)
    if dose_params[:cocktail_id] && dose_params[:ingredient_id]
      @cocktail = Cocktail.find(dose_params[:cocktail_id])
      @ingredient = Ingredient.find(dose_params[:ingredient_id])

      @dose.cocktail = @cocktail
      @dose.ingredient = @ingredient
    end

    if @dose.save
      redirect_to @cocktail
    else
      render :new
    end
  end

  def destroy
    @dose.destroy
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end
