require 'rails_helper'

RSpec.describe "persoclas/index", :type => :view do
  before(:each) do
    assign(:persoclas, [
      Persocla.create!(
        :persocate => nil,
        :num_cla => 1
      ),
      Persocla.create!(
        :persocate => nil,
        :num_cla => 1
      )
    ])
  end

  it "renders a list of persoclas" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
