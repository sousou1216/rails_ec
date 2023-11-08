Rails.application.routes.draw do
  namespace :admin do
    resources :items, only: %i[index new create edit update destroy]
    root 'items#index'
  end

  resources :items, only: %i[index show]
  resources :carts, only: %i[index]

  get 'carts/add_to_cart', to: 'carts#add_to_cart'
  # カートへの複数登録はpost
  post 'carts/add_to_cart', to: 'carts#add_to_cart'
  delete 'carts/delete_from_cart', to: 'carts#delete_from_cart'

  root 'items#index'
end
