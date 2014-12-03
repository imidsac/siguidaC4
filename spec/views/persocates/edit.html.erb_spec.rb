require 'rails_helper'

RSpec.describe "persocates/edit", :type => :view do
  before(:each) do
    @persocate = assign(:persocate, Persocate.create!(
      :nom_cate => "MyString",
      :type_cat => "MyString"
    ))
  end

  it "renders the edit persocate form" do
    render

    assert_select "form[action=?][method=?]", persocate_path(@persocate), "post" do

      assert_select "input#persocate_nom_cate[name=?]", "persocate[nom_cate]"

      assert_select "input#persocate_type_cat[name=?]", "persocate[type_cat]"
    end
  end
end
