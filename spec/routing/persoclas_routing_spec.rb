require "rails_helper"

RSpec.describe PersoclasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/persoclas").to route_to("persoclas#index")
    end

    it "routes to #new" do
      expect(:get => "/persoclas/new").to route_to("persoclas#new")
    end

    it "routes to #show" do
      expect(:get => "/persoclas/1").to route_to("persoclas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/persoclas/1/edit").to route_to("persoclas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/persoclas").to route_to("persoclas#create")
    end

    it "routes to #update" do
      expect(:put => "/persoclas/1").to route_to("persoclas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/persoclas/1").to route_to("persoclas#destroy", :id => "1")
    end

  end
end
