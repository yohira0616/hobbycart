class ItemsController < ApplicationController

  def index
    @q = Item.ransack(params[:q])
    @items = @q.result.publish.page(params[:page])
  end

  def show
    @item = Item.find_by(params[:id])
  end
end
