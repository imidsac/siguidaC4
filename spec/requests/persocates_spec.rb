require 'rails_helper'

RSpec.describe "Persocates", :type => :request do
  describe "GET /persocates" do
    it "works! (now write some real specs)" do
      get persocates_path
      expect(response).to have_http_status(200)
    end
  end
end
