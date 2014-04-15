module ApplicationHelper

  # Prepares the variables for the conditional loading of javascripts.
  # ---------------------------------------------------------------------------------------
  def prepare_load_js
    @conditional_js = Hash.new
    @conditional_js[:top] = [] unless @conditional_js[:top]
  end

end
