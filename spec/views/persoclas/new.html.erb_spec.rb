require 'rails_helper'

RSpec.describe "persoclas/new", :type => :view do
  before(:each) do
    assign(:persocla, Persocla.new(
      :persocate => nil,
      :num_cla => 1
    ))
  end

  it "renders new persocla form" do
    render

    assert_select "form[action=?][method=?]", persoclas_path, "post" do

      assert_select "input#persocla_persocate_id[name=?]", "persocla[persocate_id]"

      assert_select "input#persocla_num_cla[name=?]", "persocla[num_cla]"
    end
  end
end
