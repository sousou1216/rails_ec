Rails.application.routes.draw do
  namespace :admin do
    resources :items, only: %i[index new create edit update destroy]
    root 'items#index'
  end

  resources :items, only: %i[index show]
  resources :carts, only: %i[index]

  root 'items#index'
end
