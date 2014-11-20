require 'rails_helper'

RSpec.describe "centres/new", :type => :view do
  before(:each) do
    assign(:centre, Centre.new(
      :nom_centre => "MyString",
      :phone => "MyString",
      :address => "MyText"
    ))
  end

  it "renders new centre form" do
    render

    assert_select "form[action=?][method=?]", centres_path, "post" do

      assert_select "input#centre_nom_centre[name=?]", "centre[nom_centre]"

      assert_select "input#centre_phone[name=?]", "centre[phone]"

      assert_select "textarea#centre_address[name=?]", "centre[address]"
    end
  end
end
