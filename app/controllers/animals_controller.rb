class AnimalsController < ApplicationController

  def index

  end

  def show
    @animal = Animal.find(params[:id])
  end
end
