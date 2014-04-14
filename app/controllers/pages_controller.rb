class PagesController < ApplicationController

  include PagesHelper
  before_filter :load_pages_js

  def index
    @places = Place.all

    respond_to do |format|
      format.html { render 'index' }
      format.js { render 'index' }
    end
  end

end
