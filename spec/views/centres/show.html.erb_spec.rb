require 'rails_helper'

RSpec.describe "centres/show", :type => :view do
  before(:each) do
    @centre = assign(:centre, Centre.create!(
      :nom_centre => "Nom Centre",
      :phone => "Phone",
      :address => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nom Centre/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/MyText/)
  end
end
