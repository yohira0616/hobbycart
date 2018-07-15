# 商品マスタ
class Item < ApplicationRecord
  has_one_attached :thumbnail
  has_many :comments, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :reactions, dependent: :destroy

  validates :name, presence: true
  validates :price, numericality: {
    only_integer: true, greater_than_or_equal_to: 0
  }

  scope :favorited, ->(user) {
    reactions = Reaction.where(user: user)
    reaction_target_ids = reactions.map {|reaction| reaction.target_id}.uniq
    where(id: reaction_target_ids)
  }

  scope :purchased, ->(user) {
    # TODO
  }

  enum status: [:publish, :draft]
end
