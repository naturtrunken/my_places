module PlacesHelper

  # ---------------------------------------------------------------------------------------
  def load_places_js
    @conditional_js = Hash.new
    @conditional_js[:top] = [] unless @conditional_js[:top]

    if action_name == 'new' or action_name == 'create'
      @conditional_js[:top].push(new_place_path(:js))
    elsif action_name == 'edit' or action_name == 'update'
      @conditional_js[:top].push(edit_place_path(params[:id], :js))
    end
  end

end
