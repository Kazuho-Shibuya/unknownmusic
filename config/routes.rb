Rails.application.routes.draw do
  root 'static_pages#top'
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  resources :account_activations, only: :edit
  resources :password_resets, only: %i[new create edit update]
  resources :microposts, only: %i[create destroy index]
  resources :relationships, only: %i[create destroy]
  resources :likes, only: %i[create destroy]
  resources :test_sessions, only: :create
  resources :sessions, only: %i[new create destroy]
  resources :signups, only: %i[new create]

  resources :users do
    member do
      get :following, :followers, :home
    end
  end
  resources :static_pages, except: %i[index new create edit update show destroy] do
    collection do
      get :top, :about
      post :search_result
    end
  end
  resources :songs, except: %i[index new create edit update show destroy] do
    collection do
      get :search
    end
  end

  namespace :mypage do
    resource :users, only: %i[edit update]
  end
end
