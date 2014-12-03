require 'rails_helper'

RSpec.describe "persoclas/edit", :type => :view do
  before(:each) do
    @persocla = assign(:persocla, Persocla.create!(
      :persocate => nil,
      :num_cla => 1
    ))
  end

  it "renders the edit persocla form" do
    render

    assert_select "form[action=?][method=?]", persocla_path(@persocla), "post" do

      assert_select "input#persocla_persocate_id[name=?]", "persocla[persocate_id]"

      assert_select "input#persocla_num_cla[name=?]", "persocla[num_cla]"
    end
  end
end
