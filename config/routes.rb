# frozen_string_literal: true

Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  namespace :admin do
    resources :users, only: %i[index new create edit update destroy]
    resources :items, only: %i[index new create edit update destroy]
    root 'items#index'
  end

  resources :items, only: %i[index show]
  root 'items#index'
end
