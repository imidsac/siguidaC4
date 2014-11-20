require 'rails_helper'

RSpec.describe "services/edit", :type => :view do
  before(:each) do
    @service = assign(:service, Service.create!(
      :nom_servie => "MyString"
    ))
  end

  it "renders the edit service form" do
    render

    assert_select "form[action=?][method=?]", service_path(@service), "post" do

      assert_select "input#service_nom_servie[name=?]", "service[nom_servie]"
    end
  end
end
