# 商品マスタ
class Item < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

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
    reaction_target_ids = reactions.map(&:target_id).uniq
    where(id: reaction_target_ids)
  }

  scope :purchased, ->(user) {
    # TODO
  }

  def good_count
    Reaction.where(target_id: id).count
  end

  # これItemにあっていいか微妙
  def fetch_reaction_id(user)
    reaction = Reaction.find_by(user: user, target_id: id, target_type: 'item', stamp_code: '1')
    reaction.present? ? reaction.id : nil
  end

  enum status: [:publish, :draft]
end
