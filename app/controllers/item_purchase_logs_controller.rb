class ItemPurchaseLogsController < ApplicationController
  before_action :require_login

  def index
    @item_purchase_logs = ItemPurchaseLog.where(user: current_user).page(params[:page]).per(20)
  end

  # 購入
  def create
    binding.pry
    ItemPurchaseLog.purchase!(current_user, Item.find(params[:id]))
    flash[:success] = "商品を購入しました"
    redirect_to root_path
  end

  private

  def create_params
    # TODO
  end

end
