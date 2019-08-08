class DosesController < ApplicationController
  def index
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.all
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    @dose.save
    redirect_to cocktails_path(@cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end
end
