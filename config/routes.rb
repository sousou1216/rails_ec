# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :items, only: %i[index new create edit update destroy]
    resources :bills, only: %i[index show create]
    resources :promotions, only: %i[index]
    root 'items#index'
  end

  resources :items, only: %i[index show]
  resources :carts, only: %i[index]
  resources :bills, only: %i[create]
  resources :promotions, only: %i[create]

  get 'carts/add_to_cart', to: 'carts#add_to_cart'
  # カートへの複数登録はpost
  post 'carts/add_to_cart', to: 'carts#add_to_cart'
  delete 'carts/delete_from_cart', to: 'carts#delete_from_cart'

  root 'items#index'
end
