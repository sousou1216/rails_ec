Rails.application.routes.draw do
  namespace :admin do
    resources :items, only: %i[index new create edit update destroy]
    root 'items#index'
  end

  resources :items, only: %i[index show]
  
  resources :carts, only: %i[index]
  get 'carts/add' => 'carts#add_to_cart'
  delete 'carts/remove' => 'carts#remove_from_cart'

  root 'items#index'
end
