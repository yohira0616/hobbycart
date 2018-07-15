class UserSessionsController < ApplicationController

  # ログイン
  def new; end

  # セッション破棄
  def destroy
    logout
    flash[:primary] = "ログアウトしました"
    redirect_to root_path
  end

end
