class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_locale_by_region

  def set_locale_by_region
    unless session[:visitor_set_locale] or Rails.env.test?
      user_ip = request.remote_ip
      begin
        country_code = GeoIp.geolocation(user_ip)[:country_code]
        subregion = ISO3166::Country.find_country_by_alpha2('country_code').subregion
      rescue Timeout::Error, NoMethodError
        session[:visitor_set_locale] = true
        return redirect_to root_path, notice: 'An error has been ocurred'
      end
      if subregion == 'Northern America'
        I18n.locale = :en
      elsif subregion == 'South America'
        I18n.locale = :es
      end
    end
  end
end
