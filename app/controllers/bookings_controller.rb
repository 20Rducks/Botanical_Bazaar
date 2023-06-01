class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show]

  def index
    @bookings = current_user.bookings
  end

  def show
    @plant = Plant.new
    @plants = Plant.all
  end

  def new
    # We need @restaurant in our `simple_form_for`
    @plant = Plant.find(params[:plant_id])
    @review = Review.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.plant = Plant.find(params[:plant_id])
    @booking.user = current_user
    respond_to do |format|
      if @booking.save
        format.html { redirect_to booking_path(@booking) }
        format.json # Follows the classic Rails flow and look for a create.json view
      else
        format.html { render "bookings", status: :unprocessable_entity }
        format.json # Follows the classic Rails flow and look for a create.json view
      end
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
