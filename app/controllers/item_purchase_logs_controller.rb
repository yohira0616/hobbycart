class ItemPurchaseLogsController < ApplicationController
  before_action :require_login

  def index

  end

  # 購入
  def create
    binding.pry

    redirect_to root_path
  end

  private

  def create_params
    # TODO
  end

end
