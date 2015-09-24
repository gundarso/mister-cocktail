class DosesController < ApplicationController
  before_action :pick_cocktail

  def new
    @dose = Dose.new
  end

  def create
    @dose = @cocktail.doses.build(dose_params)
    if @dose.save
      redirect_to @cocktail, notice: "New dose was added successfully"
    else
      render :new
    end
  end

  def destroy
    @dose.destroy
    redirect_to @cocktail, notice: "You have just destroyed a dose"
  end

  private

  def pick_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
