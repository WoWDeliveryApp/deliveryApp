FactoryGirl.define do
  factory :user do
    name 'bob'
    email { Faker::Internet.email }
    password 'please123'
    address 'Palo negro, calle 2, casa 26-d'
  end
end
