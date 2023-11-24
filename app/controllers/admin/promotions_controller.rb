# frozen_string_literal: true

module Admin
  class PromotionsController < ApplicationController
    before_action :basic_auth

    def index
      @promotions = Promotion.all
    end
  end
end
