class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.new
  end

  def create
    @dose = dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])

    @dose.cocktail = @cocktail

    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:content)
  end
end



