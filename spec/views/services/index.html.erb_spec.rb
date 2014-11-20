require 'rails_helper'

RSpec.describe "services/index", :type => :view do
  before(:each) do
    assign(:services, [
      Service.create!(
        :nom_servie => "Nom Servie"
      ),
      Service.create!(
        :nom_servie => "Nom Servie"
      )
    ])
  end

  it "renders a list of services" do
    render
    assert_select "tr>td", :text => "Nom Servie".to_s, :count => 2
  end
end
