class AnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show] # buddy: write your skip

  def index
    @animals = Animal.all
    if params[:query].present?
      @animals = @animals.where("name ILIKE ? OR summary ILIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
    end
  end

  def show
    @animal = Animal.find(params[:id])
    @booking = Booking.new

  end

  private

  # def animal_params
  #   params.require(:animal).permit(:name, :price_per_day, :localisation, :can_swim, :can_walk, :can_fly, :summary, :poster_url)
  # end
end
