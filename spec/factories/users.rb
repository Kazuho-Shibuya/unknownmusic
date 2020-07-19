FactoryBot.define do
  factory :user do
    name '佐藤太郎'
    sequence(:email) { |_n| "tester#{n}@example.com" }
    password 'password'
  end
end
