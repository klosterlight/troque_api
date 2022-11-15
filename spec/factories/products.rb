FactoryBot.define do
  factory :product do
    name { "MyString" }
    expires_at { "2022-11-15 01:44:51" }
    description { "MyText" }
    status { 1 }
  end
end
