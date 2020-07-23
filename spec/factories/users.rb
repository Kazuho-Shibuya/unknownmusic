FactoryBot.define do
  factory :user do
    name '佐藤太郎'
    sequence(:email) { |n| "tester#{n}@example.com" }
    password 'password'

    # 無効になっている
    trait :invalid do
      name nil
    end
  end
end
