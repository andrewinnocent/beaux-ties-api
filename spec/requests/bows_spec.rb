require 'rails_helper'

RSpec.describe "Bows", type: :request do
  describe "GET /bows" do
    it "works! (now write some real specs)" do
      get bows_path
      expect(response).to have_http_status(200)
    end
  end
end
