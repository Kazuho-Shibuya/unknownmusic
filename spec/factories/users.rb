FactoryBot.define do
  factory :user do
    name '佐藤太郎'
    sequence(:email) { |n| "tester#{n}@example.com" }
    password 'password'
  end
end
