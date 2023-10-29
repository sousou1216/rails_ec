# frozen_string_literal: true

Rails.application.routes.draw do
  # get '/login', tp: 'sessions#new'
  # post '/login', tp: 'sessions#create'
  # delete '/logout', tp: 'sessions#destroy'

  namespace :admin do
    resources :users
  end

  namespace :admin do
    resources :items, only: %i[index new create edit update destroy]
    root 'items#index'
  end
  
  resources :items, only: %i[index new create show]
  root 'items#index'
end
