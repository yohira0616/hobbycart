FactoryBot.define do

  factory :reaction do
    user user
    target_id target_id
    stamp_code '1'
    target_type 'item'
  end

end
