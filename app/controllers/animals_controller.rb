class AnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show] # buddy: write your skip

  def index

  end
end
