# いいね！などのリアクションをつける
class Reaction < ApplicationRecord
  belongs_to :user

  validates :target_id, presence: true
  validates :target_type, presence: true
  validates :stamp_code, presence: true

end
