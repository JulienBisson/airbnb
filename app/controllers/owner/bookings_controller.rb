class Owner::BookingsController < ApplicationController
  # skip_before_action :authenticate_user!

  def accept
    @booking = Booking.find(params[:id]) # va chercher le booking_id
    @booking.status = "accepted" # on a l'id, je modifie le status de booking en lui assignant la valeur "accept"
    @booking.save # je save le nouveau status
    redirect_to bookings_path # et je redirect vers l'index de booking
  end

  def decline
    @booking = Booking.find(params[:id]) # va chercher le booking_id
    @booking.status = "declined" # on a l'id, je modifie le status de booking en lui assignant la valeur "decline"
    @booking.save # je save le nouveau status
    redirect_to bookings_path # et je redirect vers l'index de booking
  end
end
