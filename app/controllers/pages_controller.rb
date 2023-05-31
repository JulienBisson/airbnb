class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home] # buddy: write your skip

  def home
  end
end
