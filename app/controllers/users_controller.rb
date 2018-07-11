class UsersController < ApplicationController

  # 退会
  def destroy
    User.find(params[:id]).destroy!
    flash[:primary] = "アカウントを削除しました"
    logout
    redirect_to root_path
  end

end
