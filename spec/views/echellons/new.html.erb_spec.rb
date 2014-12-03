require 'rails_helper'

RSpec.describe "echellons/new", :type => :view do
  before(:each) do
    assign(:echellon, Echellon.new(
      :persocla => nil,
      :num_echellon => 1,
      :salaire_indice => "9.99"
    ))
  end

  it "renders new echellon form" do
    render

    assert_select "form[action=?][method=?]", echellons_path, "post" do

      assert_select "input#echellon_persocla_id[name=?]", "echellon[persocla_id]"

      assert_select "input#echellon_num_echellon[name=?]", "echellon[num_echellon]"

      assert_select "input#echellon_salaire_indice[name=?]", "echellon[salaire_indice]"
    end
  end
end
