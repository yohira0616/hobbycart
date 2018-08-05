require 'securerandom'

FactoryBot.define do
  factory :user do
    email 'account_name'
    uid SecureRandom.hex(10)
    provider 'twitter'
    screen_name 'account_name'
    name 'account_name'
  end

end
