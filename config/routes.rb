# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :users
  end
  
  resources :items, only: %i[index new create show]
  root 'items#index'
end
