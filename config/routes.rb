# frozen_string_literal: true

Rails.application.routes.draw do
  get 'items/index'
  resources :tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "items", to: "items#index"
  root to: "items#index"
end
