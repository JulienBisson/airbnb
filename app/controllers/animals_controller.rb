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
  end
end
