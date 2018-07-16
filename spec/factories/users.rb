FactoryBot.define do
  factory :user do
    email 'account_name'
    uid rand(10000000)
    provider 'twitter'
    screen_name 'account_name'
    name 'account_name'
  end

end
