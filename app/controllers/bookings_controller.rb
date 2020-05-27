class BookingsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @plant = Plant.find(params[:plant_id])
    @booking = Booking.new
    authorize @booking
  end


  def create
    @booking = Booking.new(booking_params)
    @plant = Plant.find(params[:plant_id])
    @booking.plant = @plant
    authorize @booking

    if @booking.save
      redirect_to plant_path(@plant)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:end_date, :start_date, :user_id, :total_price)
  end

end
