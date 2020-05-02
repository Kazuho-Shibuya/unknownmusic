# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users/new'
  root 'tops#top'
  get  '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  resources :users
end
