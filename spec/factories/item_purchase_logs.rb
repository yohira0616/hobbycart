FactoryBot.define do

  factory :item_ourchase_log do
    item item
    user user
    price 100
    name 'テスト商品'
  end

end
