class BookingsController < ApplicationController
  # méthodes à créer/compléter : index, create, edit, update
  # méthode à créer/compléter mais route inexistante : new

  def index
    @bookings = Booking.all
  end
end
