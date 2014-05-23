module CategoriesHelper

  # ---------------------------------------------------------------------------------------
  def category_params
    params.require(:category).permit(
        :name
    )
  end


  # ---------------------------------------------------------------------------------------
  def get_category!
    unless params[:id]
      render status: 400, json: {
          :status => '-1',
          :message => 'Missing parameter: id'
      }
      return
    end

    @category = Category.where(:id => params[:id]).first

    render status: 400, json: {
        :status => '-1',
        :message => 'Could not find a category with id = ' + params[:id] + '.'
    } unless @category
  end


  # ---------------------------------------------------------------------------------------
  def check_format!
    render status: 400, json: {
        :status => '-1',
        :message => 'Wrong format. There is no HTML output. Please add .json to your request.'
    } unless params[:format] == 'json'
  end


end
