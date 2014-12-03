require "rails_helper"

RSpec.describe PersocatesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/persocates").to route_to("persocates#index")
    end

    it "routes to #new" do
      expect(:get => "/persocates/new").to route_to("persocates#new")
    end

    it "routes to #show" do
      expect(:get => "/persocates/1").to route_to("persocates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/persocates/1/edit").to route_to("persocates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/persocates").to route_to("persocates#create")
    end

    it "routes to #update" do
      expect(:put => "/persocates/1").to route_to("persocates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/persocates/1").to route_to("persocates#destroy", :id => "1")
    end

  end
end
