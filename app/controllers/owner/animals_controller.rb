module Owner
  class AnimalsController < ApplicationController
    # skip_before_action :authenticate_user!

    def index
      @animals = Animal.all
    end

    def new
      @animal = Animal.new
    end
  end
end
