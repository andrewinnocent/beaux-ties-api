require 'rails_helper'

RSpec.describe "Beauxties", type: :request do
  describe "GET /beauxties" do
    it "works! (now write some real specs)" do
      get beauxties_path
      expect(response).to have_http_status(200)
    end
  end
end
