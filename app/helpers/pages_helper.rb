module PagesHelper

  # ---------------------------------------------------------------------------------------
  def load_pages_js
    @conditional_js = Hash.new
    @conditional_js[:top] = [] unless @conditional_js[:top]

    @conditional_js[:top].push(index_path(:js))
  end

end
