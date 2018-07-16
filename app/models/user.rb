class User < ApplicationRecord
  authenticates_with_sorcery! do |config|
    config.authentications_class = Authentication
  end
  has_one_attached :avatar

  has_many :authentications, dependent: :destroy
  accepts_nested_attributes_for :authentications

  has_many :comments, dependent: :destroy
  has_many :reactions, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :item_purchase_logs, dependent: :nullify
end
