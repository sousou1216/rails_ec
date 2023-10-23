# frozen_string_literal: true

Rails.application.routes.draw do
  get 'items', to: 'items#index'
  get 'items/new', to: 'items#new'
  post 'items', to: 'items#create'
  get 'items/:id', to: 'items#show'

  root to: 'items#index'
end
