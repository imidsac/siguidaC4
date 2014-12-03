require 'rails_helper'

RSpec.describe "persocates/new", :type => :view do
  before(:each) do
    assign(:persocate, Persocate.new(
      :nom_cate => "MyString",
      :type_cat => "MyString"
    ))
  end

  it "renders new persocate form" do
    render

    assert_select "form[action=?][method=?]", persocates_path, "post" do

      assert_select "input#persocate_nom_cate[name=?]", "persocate[nom_cate]"

      assert_select "input#persocate_type_cat[name=?]", "persocate[type_cat]"
    end
  end
end
