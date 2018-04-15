require "rails_helper"

RSpec.describe BeauxtiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/beauxties").to route_to("beauxties#index")
    end


    it "routes to #show" do
      expect(:get => "/beauxties/1").to route_to("beauxties#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/beauxties").to route_to("beauxties#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/beauxties/1").to route_to("beauxties#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/beauxties/1").to route_to("beauxties#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/beauxties/1").to route_to("beauxties#destroy", :id => "1")
    end

  end
end
