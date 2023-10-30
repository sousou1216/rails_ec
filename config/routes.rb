# frozen_string_literal: true

Rails.application.routes.draw do
  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  # delete '/logout', to: 'sessions#destroy'

  namespace :admin do
    resources :users
    resources :items, only: %i[index new create edit update destroy]
    root 'items#index'
  end
  
  resources :items, only: %i[index new create show]
  root 'items#index'

end
