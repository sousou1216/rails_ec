require 'rails_helper'

RSpec.describe "Admin::Items", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/admin/items/index"
      expect(response).to have_http_status(:success)
    end
  end

end
