require 'rails_helper'

RSpec.describe "Deces", :type => :request do
  describe "GET /deces" do
    it "works! (now write some real specs)" do
      get deces_path
      expect(response).to have_http_status(200)
    end
  end
end
