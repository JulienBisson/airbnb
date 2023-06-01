class BookingsController < ApplicationController
  # méthodes à créer/compléter : index, create, edit, update
  # méthode à créer/compléter mais route inexistante : new
  skip_before_action :authenticate_user!

  def index
    @user_bookings = Booking.where(user: current_user)
    @owner_bookings = Booking.includes(:animal).where(animal: {user: current_user})
  end
end
