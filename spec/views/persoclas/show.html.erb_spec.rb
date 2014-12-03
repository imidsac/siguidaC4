require 'rails_helper'

RSpec.describe "persoclas/show", :type => :view do
  before(:each) do
    @persocla = assign(:persocla, Persocla.create!(
      :persocate => nil,
      :num_cla => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
  end
end
