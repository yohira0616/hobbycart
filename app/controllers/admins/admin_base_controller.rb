# 管理画面専用
module Admins
  class AdminBaseController < ::ActionController::Base
    include ::AuthenticationHandler
    layout 'admin/application'
    before_action :require_login


  end
end
