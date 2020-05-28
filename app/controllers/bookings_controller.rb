class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy]

  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @plant = Plant.find(params[:plant_id])
    @booking = Booking.new
    authorize @booking
  end

  def show
    raise
    @booking.user = current_user
    authorize @booking
  end


  def create
    @booking = Booking.new(booking_params)
    @plant = Plant.find(params[:plant_id])
    @booking.user = current_user
    @booking.plant = @plant
    authorize @booking

    if @booking.save
     redirect_to bookings_path, notice: 'Plant was booked 🌱'
   else
    render :new
    end
  end

  def destroy
    raise
    @plant = @booking.plant_id
    @booking.destroy
    authorize @booking
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:end_date, :start_date, :plant_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

end
