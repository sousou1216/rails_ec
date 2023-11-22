# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Admin::Purchases', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/admin/purchases/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/admin/purchases/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/admin/purchases/create'
      expect(response).to have_http_status(:success)
    end
  end
end
