Rails.application.routes.draw do
  namespace :admin do
    get 'purchases/index'
    get 'purchases/new'
    get 'purchases/create'
    resources :items, only: %i[index new create edit update destroy]
    resources :purchases, only: %i[index show new create]
    root 'items#index'
  end

  resources :items, only: %i[index show]
  resources :carts, only: %i[index]
  resources :bills, only: %i[create]

  get 'carts/add_to_cart', to: 'carts#add_to_cart'
  # カートへの複数登録はpost
  post 'carts/add_to_cart', to: 'carts#add_to_cart'
  delete 'carts/delete_from_cart', to: 'carts#delete_from_cart'

  root 'items#index'
end
