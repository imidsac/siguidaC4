require 'rails_helper'

RSpec.describe "echellons/index", :type => :view do
  before(:each) do
    assign(:echellons, [
      Echellon.create!(
        :persocla => nil,
        :num_echellon => 1,
        :salaire_indice => "9.99"
      ),
      Echellon.create!(
        :persocla => nil,
        :num_echellon => 1,
        :salaire_indice => "9.99"
      )
    ])
  end

  it "renders a list of echellons" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
