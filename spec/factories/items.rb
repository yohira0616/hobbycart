FactoryBot.define do
  factory :item do
    name "テスト商品"
    description "TODO Faker化する"
    price 100
    status :publish
  end
end
