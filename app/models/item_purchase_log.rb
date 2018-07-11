# 商品購入明細
class ItemPurchaseLog < ApplicationRecord
  belongs_to :item

  class << self
    def purchase!(user,item)
      # TODO
    end
  end
end
