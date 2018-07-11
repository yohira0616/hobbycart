# 商品マスタ
class Item < ApplicationRecord
  has_one_attached :thumbnail
  has_many :comments, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :price, numericality: {
    only_integer: true, greater_than_or_equal_to: 0
  }

  enum status: [:publish, :draft]
end
