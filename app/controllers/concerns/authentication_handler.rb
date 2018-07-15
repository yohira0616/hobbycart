module AuthenticationHandler
  extend ActiveSupport::Concern

  def not_authenticated
    flash[:warning] = "この操作を行うには、ログインが必要です"
    redirect_to login_path
  end
end
