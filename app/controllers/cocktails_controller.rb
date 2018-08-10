class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]
  def index
    @cocktails = Cocktail.all
  end
  def show
    @doses = @cocktail.doses
  end
  def new
    @cocktail = Cocktail.new
  end
  def create
    @cocktail = Cocktail.new(cocktail_params)

    @cocktail.save
    redirect_to cocktail_path(@cocktail)
  end
  def edit
  end
  def update

    if @cocktail.update(cocktail_params)
      redirect_to @cocktail, notice: 'cocktail was successfully updated.'
    else
      render :edit
    end
  end
  # def destroy
  # @cocktail.destroy
  # respond_to do |format|
  #   format.html { redirect_to _url, notice: 'cocktail was successfully destroyed.' }
  #   format.json { head :no_content }
  # end



 private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end


  def cocktail_params
    params.require(:cocktail).permit(:name, :ingredients, :doses, :photo)
  end
end
