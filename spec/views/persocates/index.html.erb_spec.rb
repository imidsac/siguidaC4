require 'rails_helper'

RSpec.describe "persocates/index", :type => :view do
  before(:each) do
    assign(:persocates, [
      Persocate.create!(
        :nom_cate => "Nom Cate",
        :type_cat => "Type Cat"
      ),
      Persocate.create!(
        :nom_cate => "Nom Cate",
        :type_cat => "Type Cat"
      )
    ])
  end

  it "renders a list of persocates" do
    render
    assert_select "tr>td", :text => "Nom Cate".to_s, :count => 2
    assert_select "tr>td", :text => "Type Cat".to_s, :count => 2
  end
end
