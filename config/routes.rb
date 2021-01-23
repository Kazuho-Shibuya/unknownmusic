Rails.application.routes.draw do
  root 'static_pages#top'
  get '/logout', to: 'sessions#destroy'
  get '/about', to: 'static_pages#about'
  get 'songs/search', to: 'songs#search'
  post '/search_result', to: 'static_pages#search_result'
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
  resources :users do
    member do
      get :following, :followers, :home
    end
  end
  resources :account_activations, only: :edit
  resources :password_resets, only: %i[new create edit update]
  resources :microposts, only: %i[create destroy index]
  resources :relationships, only: %i[create destroy]
  resources :likes, only: %i[create destroy]
  resources :test_sessions, only: :create
  resources :sessions, only: %i[new create destroy]
  resources :signups, only: %i[new create]
  namespace :mypage do
    resources :users, only: %i[edit update]
  end
end
