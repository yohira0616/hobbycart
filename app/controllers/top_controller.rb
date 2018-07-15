class TopController < ApplicationController

  def index
    @items = Item.publish.page(1).per(20)
  end
end
