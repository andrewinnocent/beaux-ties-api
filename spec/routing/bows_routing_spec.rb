require "rails_helper"

RSpec.describe BowsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bows").to route_to("bows#index")
    end


    it "routes to #show" do
      expect(:get => "/bows/1").to route_to("bows#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/bows").to route_to("bows#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bows/1").to route_to("bows#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bows/1").to route_to("bows#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bows/1").to route_to("bows#destroy", :id => "1")
    end

  end
end
