require 'rails_helper'

RSpec.describe "Echellons", :type => :request do
  describe "GET /echellons" do
    it "works! (now write some real specs)" do
      get echellons_path
      expect(response).to have_http_status(200)
    end
  end
end
