require 'rails_helper'

RSpec.describe "CartProducts", type: :request do
  describe "GET /cart_products" do
    it "works! (now write some real specs)" do
      get cart_products_path
      expect(response).to have_http_status(200)
    end
  end
end
