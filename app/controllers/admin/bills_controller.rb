# frozen_string_literal: true

module Admin
  class BillsController < ApplicationController
    before_action :basic_auth

    def index
      @bills = Bill.all
    end

    def show
      # includesで親子関係のデータリソースをまとめてDBから取得
      @bill = Bill.includes(:purchases).find(params[:id])
    end
  end
end
