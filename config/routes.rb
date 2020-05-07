# frozen_string_literal: true

Rails.application.routes.draw do
  root 'tops#top'
  get  '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get  '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  patch '/users/:id/edit', to: 'users#update'
  resources :users
  resources :account_activations, only: [:edit]
end
