require 'faker'

FactoryBot.define do

  factory :authentication do
    user user
    provider 'twitter'
    uid Faker::Twitter
  end

end
