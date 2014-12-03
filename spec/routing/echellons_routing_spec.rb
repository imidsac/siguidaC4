require "rails_helper"

RSpec.describe EchellonsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/echellons").to route_to("echellons#index")
    end

    it "routes to #new" do
      expect(:get => "/echellons/new").to route_to("echellons#new")
    end

    it "routes to #show" do
      expect(:get => "/echellons/1").to route_to("echellons#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/echellons/1/edit").to route_to("echellons#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/echellons").to route_to("echellons#create")
    end

    it "routes to #update" do
      expect(:put => "/echellons/1").to route_to("echellons#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/echellons/1").to route_to("echellons#destroy", :id => "1")
    end

  end
end
