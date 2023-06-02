module Owner
  class AnimalsController < ApplicationController
    # skip_before_action :authenticate_user!

    def index
      @animals = Animal.all
    end

    def new
      @animal = Animal.new
    end

    def show
      @animal = Animal.find(params[:id])
    end

    def create
      @animal = Animal.new(owner_params)
      @animal.owner = current_user
      # @booking.total_price = (@booking.end_date - @booking.start_date) * @animal.price_per_day
      if @animal.save
        redirect_to animal_path(@animal), notice: "Beast adding ✔️"
      else
        render 'animals/index', status: :unprocessable_entity
      end
    end

    private

    def owner_params
      params.require(:animal).permit(:name, :price_per_day, :localisation, :can_swim, :can_walk, :can_fly, :summary, :photo)
    end
  end
end
