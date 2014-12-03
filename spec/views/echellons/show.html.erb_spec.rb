require 'rails_helper'

RSpec.describe "echellons/show", :type => :view do
  before(:each) do
    @echellon = assign(:echellon, Echellon.create!(
      :persocla => nil,
      :num_echellon => 1,
      :salaire_indice => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/9.99/)
  end
end
