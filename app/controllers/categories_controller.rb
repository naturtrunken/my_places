class CategoriesController < ApplicationController

  include CategoriesHelper
  before_action :check_format!
  before_action :get_category!, :only => [:update, :destroy, :places]


  # GET /categories.json
  # ---------------------------------------------------------------------------------------
  def index
    render status: 200, json: Category.all.to_json
  end


  # POST /categories.json
  # ---------------------------------------------------------------------------------------
  def create
    @category = Category.new(category_params)

    if @category.save
      render status: 201, json: {
          :status => '0'
      }
    else
      render status: 500, json: {
          :status => '-1',
          :message => @category.errors.full_messages
      }
    end
  end


  # PATCH/PUT /categories/1.json
  # ---------------------------------------------------------------------------------------
  def update
    if @category.update(category_params)
      render status: 200, json: {
          :status => '0'
      }
    else
      render status: 400, json: {
          :status => '-1',
          :message => @category.errors.full_messages.join(', ')
      }
    end
  end


  # DELETE /categories/1.json
  # ---------------------------------------------------------------------------------------
  def destroy
    @category.destroy

    render status: 200, json: {
        :status => '0'
    }
  end


  # GET /category/:id/places.json
  # ---------------------------------------------------------------------------------------
  def places
    render status: 200, json: Place.where(
        :category_id => @category.id
    ).to_json
  end


end
