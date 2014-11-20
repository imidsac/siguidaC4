require 'rails_helper'

RSpec.describe "centres/index", :type => :view do
  before(:each) do
    assign(:centres, [
      Centre.create!(
        :nom_centre => "Nom Centre",
        :phone => "Phone",
        :address => "MyText"
      ),
      Centre.create!(
        :nom_centre => "Nom Centre",
        :phone => "Phone",
        :address => "MyText"
      )
    ])
  end

  it "renders a list of centres" do
    render
    assert_select "tr>td", :text => "Nom Centre".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
