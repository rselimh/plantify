class PlantsController < ApplicationController
  def show
  end

  def new
    @plant = Plant.new
    authorize @plant
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user = current_user
    authorize @plant

    if @plant.save
      redirect_to root_path, notice: 'Plant was added.' # TODO from lecture: redirect_to @plant, notice: 'Plant was added.'
      # does not work now because show does not work?
    else
      render :new
    end
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :description, :status, :address, :price_per_day, :photo )
  end

end