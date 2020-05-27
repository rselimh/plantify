class PlantsController < ApplicationController

  def index
     @plants = policy_scope(Plant)

  end

  def show
    @plant = Plant.find(params[:id])
    authorize @plant
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
      redirect_to @plant, notice: 'Plant was added.' # TODO from lecture: redirect_to @plant, notice: 'Plant was added.'
      # does not work now because show does not work?
    else
      render :new
    end
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :description, :status, :address, :price_per_day, photos: [])
  end

end

