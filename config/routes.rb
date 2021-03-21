Rails.application.routes.draw do
  root 'top#index'
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  resources :account_activations, only: :edit
  resources :password_resets, only: %i[new create edit update]
  resources :microposts, only: %i[create destroy index]
  resources :relationships, only: %i[create destroy]
  resources :likes, only: %i[create destroy]
  resources :test_sessions, only: :create
  resources :sessions, only: %i[new create destroy]
  resources :signups, only: %i[new create]
  resources :admin, only: %i[destroy]
  resources :about, only: %i[index]
  resources :top, only: %i[index]
  resources :home, only: %i[index]

  resources :users, except: %i[destroy] do
    member do
      get :following, :followers
    end
  end

  namespace :song do
    resources :search, only: %i[index create]
  end

  namespace :mypage do
    resource :users, only: %i[edit update]
  end
end

# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                      root GET    /                                                                                        top#index
#         letter_opener_web        /letter_opener                                                                           LetterOpenerWeb::Engine
#   edit_account_activation GET    /account_activations/:id/edit(.:format)                                                  account_activations#edit
#           password_resets POST   /password_resets(.:format)                                                               password_resets#create
#        new_password_reset GET    /password_resets/new(.:format)                                                           password_resets#new
#       edit_password_reset GET    /password_resets/:id/edit(.:format)                                                      password_resets#edit
#            password_reset PATCH  /password_resets/:id(.:format)                                                           password_resets#update
#                           PUT    /password_resets/:id(.:format)                                                           password_resets#update
#                microposts GET    /microposts(.:format)                                                                    microposts#index
#                           POST   /microposts(.:format)                                                                    microposts#create
#                 micropost DELETE /microposts/:id(.:format)                                                                microposts#destroy
#             relationships POST   /relationships(.:format)                                                                 relationships#create
#              relationship DELETE /relationships/:id(.:format)                                                             relationships#destroy
#                     likes POST   /likes(.:format)                                                                         likes#create
#                      like DELETE /likes/:id(.:format)                                                                     likes#destroy
#             test_sessions POST   /test_sessions(.:format)                                                                 test_sessions#create
#                  sessions POST   /sessions(.:format)                                                                      sessions#create
#               new_session GET    /sessions/new(.:format)                                                                  sessions#new
#                   session DELETE /sessions/:id(.:format)                                                                  sessions#destroy
#                   signups POST   /signups(.:format)                                                                       signups#create
#                new_signup GET    /signups/new(.:format)                                                                   signups#new
#                     admin DELETE /admin/:id(.:format)                                                                     admin#destroy
#               about_index GET    /about(.:format)                                                                         about#index
#                 top_index GET    /top(.:format)                                                                           top#index
#                home_index GET    /home(.:format)                                                                          home#index
#            following_user GET    /users/:id/following(.:format)                                                           users#following
#            followers_user GET    /users/:id/followers(.:format)                                                           users#followers
#                     users GET    /users(.:format)                                                                         users#index
#                           POST   /users(.:format)                                                                         users#create
#                  new_user GET    /users/new(.:format)                                                                     users#new
#                 edit_user GET    /users/:id/edit(.:format)                                                                users#edit
#                      user GET    /users/:id(.:format)                                                                     users#show
#                           PATCH  /users/:id(.:format)                                                                     users#update
#                           PUT    /users/:id(.:format)                                                                     users#update
#         song_search_index GET    /song/search(.:format)                                                                   song/search#index
#                           POST   /song/search(.:format)                                                                   song/search#create
#         edit_mypage_users GET    /mypage/users/edit(.:format)                                                             mypage/users#edit
#              mypage_users PATCH  /mypage/users(.:format)                                                                  mypage/users#update
#                           PUT    /mypage/users(.:format)                                                                  mypage/users#update
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
#
# Routes for LetterOpenerWeb::Engine:
# clear_letters DELETE /clear(.:format)                 letter_opener_web/letters#clear
# delete_letter DELETE /:id(.:format)                   letter_opener_web/letters#destroy
#       letters GET    /                                letter_opener_web/letters#index
#        letter GET    /:id(/:style)(.:format)          letter_opener_web/letters#show
#               GET    /:id/attachments/:file(.:format) letter_opener_web/letters#attachment
