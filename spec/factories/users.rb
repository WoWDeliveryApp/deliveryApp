FactoryGirl.define do
  factory :user do
    name 'bob'
    email { Faker::Internet.email }
    password 'please123'
  end
end
