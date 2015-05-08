class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :set_locale
  #before_filter :set_user_language

  def set_locale
  	I18n.locale = params[:locale] || I18n.default_locale
  end

  # def set_user_language
  #   #I18n.locale = 'en'
  #   I18n.locale = params[:locale] || I18n.default_locale
  # end

  protect_from_forgery with: :exception

  def default_url_options(options={})
  	{locate: I18n.locale}.merge options
  end

end
