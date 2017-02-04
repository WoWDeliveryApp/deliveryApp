FactoryGirl.define do
  factory :delivery do
    accepted false
    delivered false
    refused false
    description "MyString"
    order
  end
end
