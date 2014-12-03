require 'rails_helper'

RSpec.describe "echellons/edit", :type => :view do
  before(:each) do
    @echellon = assign(:echellon, Echellon.create!(
      :persocla => nil,
      :num_echellon => 1,
      :salaire_indice => "9.99"
    ))
  end

  it "renders the edit echellon form" do
    render

    assert_select "form[action=?][method=?]", echellon_path(@echellon), "post" do

      assert_select "input#echellon_persocla_id[name=?]", "echellon[persocla_id]"

      assert_select "input#echellon_num_echellon[name=?]", "echellon[num_echellon]"

      assert_select "input#echellon_salaire_indice[name=?]", "echellon[salaire_indice]"
    end
  end
end
