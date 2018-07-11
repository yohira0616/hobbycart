class OauthsController < ApplicationController

  def oauth
    login_at(params[:provider])
  end

  def callback
    provider = params[:provider]
    if @user = login_from(provider)
      flash[:primary] = "ログインしました"
      redirect_to root_path
    else
      begin
        @user = create_from(provider)
        # NOTE: this is the place to add '@user.activate!' if you are using user_activation submodule

        reset_session # protect from session fixation attack
        auto_login(@user)
        flash[:primary] = "ログインしました"
        redirect_to root_path
      rescue StandardError => e
        logger.error e
        flash[:danger] = "ログインに失敗しました..."
        redirect_to root_path
      end
    end
  end
end
