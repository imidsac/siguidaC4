require "rails_helper"

RSpec.describe MariagesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mariages").to route_to("mariages#index")
    end

    it "routes to #new" do
      expect(:get => "/mariages/new").to route_to("mariages#new")
    end

    it "routes to #show" do
      expect(:get => "/mariages/1").to route_to("mariages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mariages/1/edit").to route_to("mariages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mariages").to route_to("mariages#create")
    end

    it "routes to #update" do
      expect(:put => "/mariages/1").to route_to("mariages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mariages/1").to route_to("mariages#destroy", :id => "1")
    end

  end
end
