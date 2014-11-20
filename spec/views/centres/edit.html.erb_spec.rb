require 'rails_helper'

RSpec.describe "centres/edit", :type => :view do
  before(:each) do
    @centre = assign(:centre, Centre.create!(
      :nom_centre => "MyString",
      :phone => "MyString",
      :address => "MyText"
    ))
  end

  it "renders the edit centre form" do
    render

    assert_select "form[action=?][method=?]", centre_path(@centre), "post" do

      assert_select "input#centre_nom_centre[name=?]", "centre[nom_centre]"

      assert_select "input#centre_phone[name=?]", "centre[phone]"

      assert_select "textarea#centre_address[name=?]", "centre[address]"
    end
  end
end
