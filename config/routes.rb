# frozen_string_literal: true

Rails.application.routes.draw do
  resources :bows_carts, except: %i[new edit]
  resources :bows, only: %i[index show]
  resources :carts, only: %i[show create]
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
