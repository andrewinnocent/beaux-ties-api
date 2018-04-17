require "rails_helper"

RSpec.describe BowsCartsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bows_carts").to route_to("bows_carts#index")
    end


    it "routes to #show" do
      expect(:get => "/bows_carts/1").to route_to("bows_carts#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/bows_carts").to route_to("bows_carts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bows_carts/1").to route_to("bows_carts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bows_carts/1").to route_to("bows_carts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bows_carts/1").to route_to("bows_carts#destroy", :id => "1")
    end

  end
end
