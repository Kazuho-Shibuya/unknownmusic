FactoryBot.define do
  factory :like do
    user_id 1
    micropost_id 2
    association :user
    association :micropost
  end
end
