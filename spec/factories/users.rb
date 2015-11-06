require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.name { Faker::Name.first_name }
    f.surname { Faker::Name.last_name }
    f.email { Faker::Internet.email }
    f.password { Faker::Internet.password(8, 16) }
    f.address1 { Faker::Address.street_address }
    f.city { Faker::Address.city }
    f.state { Faker::Address.state }
    f.country { Faker::Address.country_code }
  end
end