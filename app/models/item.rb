# 商品マスタ
class Item < ApplicationRecord
  has_one_attached :thumbnail

  enum status: [:publish, :draft]
end
