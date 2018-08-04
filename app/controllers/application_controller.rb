class ApplicationController < ActionController::Base
  include AuthenticationHandler
  before_action :set_user_information_to_gon


  def set_user_information_to_gon
    return unless logged_in?

    gon.user_info = {

    }
  end

end
