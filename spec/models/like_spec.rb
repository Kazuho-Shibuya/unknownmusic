require 'rails_helper'

RSpec.describe Like, type: :model do
  it 'ユーザID、マイクロポストIDがあればいいねできる'
  it 'ユーザが紐づけられていないといいねできない'
  it 'マイクロポストが紐づけられていないといいねできない'
end
