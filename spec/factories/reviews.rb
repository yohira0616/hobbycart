require 'faker'

FactoryBot.define do

  factory :review do
    user user
    item item
    body Faker::OnePiece.quote
  end

end
