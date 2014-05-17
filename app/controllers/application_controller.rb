class ApplicationController < ActionController::Base
  include ApplicationHelper

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
#  protect_from_forgery with: :null_session
# TODO include me again

  # Set the locale at every request.
  before_filter :set_locale

  # ---------------------------------------------------------------------------------------
  def default_url_options(options={})
    { :locale => I18n.locale }
  end

  # ---------------------------------------------------------------------------------------
  # Sets the locale for this request.
  def set_locale

    if params[:locale] == 'en' or
        params[:locale] == 'de'
      I18n.locale = params[:locale]
    end

  end

end
