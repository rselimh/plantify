class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @plant = Plant.find(params[:plant_id])
    @booking = Booking.new
    authorize @booking
  end


  def create
    @booking = Booking.new(booking_params)
    @plant = Plant.find(params[:plant_id])
    @booking.user = current_user
    @booking.plant = @plant
    authorize @booking

    if @booking.save
       redirect_to bookings_path, notice: 'Plant was booked.'
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:end_date, :start_date)
  end

end
