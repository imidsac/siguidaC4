require 'rails_helper'

RSpec.describe "persocates/show", :type => :view do
  before(:each) do
    @persocate = assign(:persocate, Persocate.create!(
      :nom_cate => "Nom Cate",
      :type_cat => "Type Cat"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nom Cate/)
    expect(rendered).to match(/Type Cat/)
  end
end
