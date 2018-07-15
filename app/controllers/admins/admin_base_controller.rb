# 管理画面専用
module Admins
  class AdminBaseController < ::ActionController::Base
    include ::AuthenticationHandler

    layout 'admin/application'

  end
end
