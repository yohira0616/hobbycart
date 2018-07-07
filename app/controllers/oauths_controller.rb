class OauthsController < ApplicationController

  def oauth
    login_at(params[:provider])
  end

  def callback

    binding.pry
    redirect_to root_path

  end
end
