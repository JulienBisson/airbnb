module Owner
  class AnimalsController < ApplicationController
    skip_before_action :authenticate_user!

    def index
      @owner_animals = Animal.all
    end


    private

    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :category)
    end

    end
