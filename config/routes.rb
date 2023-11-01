# frozen_string_literal: true

Rails.application.routes.draw do
  resources :items, only: %i[index new create show]
  root 'items#index'
end
