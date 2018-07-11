class Review < ApplicationRecord
  belongs_to :item
  belongs_to :user

  validates :body, presence: true
end
