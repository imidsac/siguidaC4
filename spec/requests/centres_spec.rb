require 'rails_helper'

RSpec.describe "Centres", :type => :request do
  describe "GET /centres" do
    it "works! (now write some real specs)" do
      get centres_path
      expect(response).to have_http_status(200)
    end
  end
end
