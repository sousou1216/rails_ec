# frozen_string_literal: true

module Admin
  class BillsController < ApplicationController
    before_action :basic_auth, only: %i[index show]

    def index
      @bills = Bill.all
    end

    def show
      # includesで親子関係のデータリソースをまとめてDBから取得
      @bill = Bill.includes(:purchases).find(params[:id])
    end

    private

    def basic_auth
      authenticate_or_request_with_http_basic do |username, password|
        username == ENV['BASIC_AUTH_USER'] && password == ENV['BASIC_AUTH_PASSWORD']
      end
    end
  end
end
