require 'rails_helper'

RSpec.describe "services/new", :type => :view do
  before(:each) do
    assign(:service, Service.new(
      :nom_servie => "MyString"
    ))
  end

  it "renders new service form" do
    render

    assert_select "form[action=?][method=?]", services_path, "post" do

      assert_select "input#service_nom_servie[name=?]", "service[nom_servie]"
    end
  end
end
