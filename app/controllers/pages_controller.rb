class PagesController < ApplicationController

  def index
    @places = Place.all
  end

end
