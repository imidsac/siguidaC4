require "rails_helper"

RSpec.describe CentresController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/centres").to route_to("centres#index")
    end

    it "routes to #new" do
      expect(:get => "/centres/new").to route_to("centres#new")
    end

    it "routes to #show" do
      expect(:get => "/centres/1").to route_to("centres#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/centres/1/edit").to route_to("centres#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/centres").to route_to("centres#create")
    end

    it "routes to #update" do
      expect(:put => "/centres/1").to route_to("centres#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/centres/1").to route_to("centres#destroy", :id => "1")
    end

  end
end
