require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { FactoryBot.create(:user) }
  let(:user_params) { FactoryBot.attributes_for(:user) }

  describe '#index' do
    before do
      get :index
    end

    it 'ログインページに遷移すること' do
      expect(response).to redirect_to login_url
    end

    it 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end

  describe '#show' do
    before do
      get :show, params: { id: user.id }
    end

    it '正常にレスポンスを返していること' do
      expect(response).to be_successful
    end

    it 'ステータスが200であること' do
      expect(response.status).to eq 200
    end
  end

  describe '#new' do
    before do
      get :new
    end

    it '正常にレスポンスを返すこと' do
      expect(response).to be_successful
    end

    it 'ステータスが200であること' do
      expect(response.status).to eq 200
    end
  end

  describe '#create' do
    context '有効な属性値の場合' do
      it 'ユーザを作成できること' do
        expect { post :create, params: { user: user_params } }.to change(User, :count).by(1)
      end

      it 'ステータスが302であること' do
        post :create, params: { user: user_params }
        expect(response.status).to eq 302
      end

      it 'トップ画面に遷移すること' do
        post :create, params: { user: user_params }
        expect(response).to redirect_to root_url
      end
    end

    context '無効な属性値の場合' do
      it 'ユーザを作成できないこと' do
        user_params = FactoryBot.attributes_for(:user, :invalid)
        expect do
          post :create, params: { user: user_params }
        end.to_not change(User, :count)
      end
    end
  end

  describe '#edit' do
    before do
      get :edit, params: { id: user.id }
    end

    it 'ログインページに遷移すること' do
      expect(response).to redirect_to login_url
    end

    it 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end

  describe '#update' do
    before do
      patch :update, params: { id: user.id }
    end
    it 'ログインページに遷移すること' do
      expect(response).to redirect_to login_url
    end

    it 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end

  describe '#destroy' do
    it 'ログインページに遷移すること' do
      delete :destroy, params: { id: user.id }
      expect(response).to redirect_to login_url
    end

    it 'ステータスが302であること' do
      get :destroy, params: { id: user.id }
      expect(response.status).to eq 302
    end
  end

  describe '#following' do
    before do
      get :following, params: { id: user.id }
    end
    it 'ログインページに遷移すること' do
      expect(response).to redirect_to login_url
    end

    it 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end

  describe '#followers' do
    before do
      get :followers, params: { id: user.id }
    end

    it 'ログインページに遷移すること' do
      expect(response).to redirect_to login_url
    end

    it 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end
end
