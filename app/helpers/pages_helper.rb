module PagesHelper

  # Prepares the script loading for controller actions.
  # ---------------------------------------------------------------------------------------
  def load_pages_js
    prepare_load_js
    @conditional_js[:top].push(index_path(:js))
  end

end
