# frozen_string_literal: true

Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  root 'tops#top'
  get  '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get  '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  patch '/users/:id/edit', to: 'users#update'
  get '/home', to: 'static_pages#home'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: %i[new create edit update]
  resources :microposts,          only: %i[create destroy]
end
