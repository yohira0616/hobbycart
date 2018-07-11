class UserSessionController < ApplicationController

  # ログイン
  def new; end

  # セッション破棄
  def destroy
    logout
  end

end
