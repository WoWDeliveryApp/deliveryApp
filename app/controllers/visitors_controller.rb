class VisitorsController < ApplicationController
  def index
  end

  def set_locale
    begin 
      I18n.locale = params[:locale].to_sym
      redirect_to :back
    rescue NoMethodError, ActionController::RedirectBackError
      redirect_to root_path
    end
  end
end
