class PlantsController < ApplicationController

  
  def show
    @plant = Plant.find(params[:id])
    authorize @plant
  end

  private
    def plant_params
      params.require(:plant).permit(:name, :description, :address, :price_per_day)
    end
end
