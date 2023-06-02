class BookingsController < ApplicationController
  # méthodes à créer/compléter : index, create, edit, update
  # méthode à créer/compléter mais route inexistante : new
  # skip_before_action :authenticate_user!

  def index
    @all_bookings = Booking.all
    @user_bookings = Booking.where(user_id: current_user.id)
    @owner_bookings = Booking.includes(:animal).where(animal: { owner_id: current_user.id })
    @animal = Animal.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new(booking_params)
    @booking.animal = @animal
    @booking.user = current_user
    # @booking.total_price = (@booking.end_date - @booking.start_date) * @animal.price_per_day
    if @booking.save
      redirect_to bookings_path, notice: "Booking save"
    else
      render 'animals/show', status: :unprocessable_entity
    end
  end

  def edit
    @booking = booking.find(params[:id])
  end

  def update
    if @booking.update(booking_params)
      redirect_to accept_owner_booking_path(@booking)
    else
      redirect_to decline_owner_booking(@booking)
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :status, :create_at, :updated_at, :user_id, :animal_id)
  end
end
