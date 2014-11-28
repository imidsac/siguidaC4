require "rails_helper"

RSpec.describe DecesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/deces").to route_to("deces#index")
    end

    it "routes to #new" do
      expect(:get => "/deces/new").to route_to("deces#new")
    end

    it "routes to #show" do
      expect(:get => "/deces/1").to route_to("deces#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/deces/1/edit").to route_to("deces#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/deces").to route_to("deces#create")
    end

    it "routes to #update" do
      expect(:put => "/deces/1").to route_to("deces#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/deces/1").to route_to("deces#destroy", :id => "1")
    end

  end
end
