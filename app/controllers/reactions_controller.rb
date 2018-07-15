# TODO: 名前がよろしくないかもしれない
class ReactionsController < ApplicationController
  before_action :require_login

  # 自分がふぁぼった商品を表示
  def index
    @items = Item.favorited(current_user).page(params[:page]).per(20)
  end

end
