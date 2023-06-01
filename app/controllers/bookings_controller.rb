class BookingsController < ApplicationController
  # méthodes à créer/compléter : index, create, edit, update
  # méthode à créer/compléter mais route inexistante : new
  # skip_before_action :authenticate_user!

  def index
    @all_bookings = Booking.all
    @user_bookings = Booking.where(user_id: current_user.id)
    @owner_bookings = Booking.includes(:animal).where(animal: { owner_id: current_user.id })
  end
end
