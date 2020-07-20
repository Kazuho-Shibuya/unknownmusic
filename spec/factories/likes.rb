FactoryBot.define do
  factory :like do
    association :micropost
    user { micropost.user }
  end
end
