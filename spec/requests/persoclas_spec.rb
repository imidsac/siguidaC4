require 'rails_helper'

RSpec.describe "Persoclas", :type => :request do
  describe "GET /persoclas" do
    it "works! (now write some real specs)" do
      get persoclas_path
      expect(response).to have_http_status(200)
    end
  end
end
