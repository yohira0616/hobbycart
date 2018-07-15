class ItemPurchaseLogsController < ApplicationController
  before_action :require_login

  def index
    @item_purchase_logs = ItemPurchaseLog.where(user: current_user).page(params[:page]).per(20)
  end

  # 購入
  def create
    ItemPurchaseLog.purchase!(current_user, Item.publish.find(params[:item_id]))
    flash[:success] = "商品を購入しました"
    redirect_to user_item_purchase_logs_path(user_id: current_user.id)
  end

end
