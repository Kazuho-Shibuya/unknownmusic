FactoryBot.define do
  factory :user do
    name '田中実'
    sequence(:email) { |n| "tester#{n}@example.com" }
    password 'password'
    activated true

    # 無効になっている
    trait :invalid do
      name nil
    end
  end
end
