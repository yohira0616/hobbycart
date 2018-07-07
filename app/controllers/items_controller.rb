class ItemsController < ApplicationController


  def index
    # 暫定
    @items = Item.all

  end

  def show

  end
end
