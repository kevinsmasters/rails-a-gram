require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe "GET /about" do
    it "returns http success" do
      get "/home/about"
      expect(response).to have_http_status(:success)
    end
  end

end
