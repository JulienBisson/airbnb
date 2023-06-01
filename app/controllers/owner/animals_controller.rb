module Owner
  class AnimalsController < ApplicationController
    skip_before_action :authenticate_user!

    def index
      @owner_animals = Animal.all
    end
  end
end
