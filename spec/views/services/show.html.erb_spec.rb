require 'rails_helper'

RSpec.describe "services/show", :type => :view do
  before(:each) do
    @service = assign(:service, Service.create!(
      :nom_servie => "Nom Servie"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nom Servie/)
  end
end
