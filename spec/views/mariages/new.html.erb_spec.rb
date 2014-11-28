require 'rails_helper'

RSpec.describe "mariages/new", :type => :view do
  before(:each) do
    assign(:mariage, Mariage.new(
      :nom_mari => "MyString",
      :prenom_mari => "MyString",
      :lieu_nai_mari => "MyString",
      :profession_mari => "MyString",
      :domicil_mari => "MyString",
      :nom_prenom_pere_mari => "MyString",
      :nom_prenom_mere_mari => "MyString",
      :nom_prenom_tm_mari => "MyString",
      :lieu_nai_tm_mari => "MyString",
      :domicil_tm_mari => "MyString",
      :nom_marie => "MyString",
      :prenom_marie => "MyString",
      :lieu_nai_marie => "MyString",
      :profession_marie => "MyString",
      :domicil_marie => "MyString",
      :nom_prenom_pere_marie => "MyString",
      :nom_prenom_mere_marie => "MyString",
      :consente_parent => "MyString",
      :nom_prenom_tm_marie => "MyString",
      :lieu_nai_tm_marie => "MyString",
      :domicil_tm_marie => "MyString",
      :dot => "9.99",
      :nom_prenom_officie => "MyString",
      :qualite_officie => "MyString",
      :n_volet => "MyString"
    ))
  end

  it "renders new mariage form" do
    render

    assert_select "form[action=?][method=?]", mariages_path, "post" do

      assert_select "input#mariage_nom_mari[name=?]", "mariage[nom_mari]"

      assert_select "input#mariage_prenom_mari[name=?]", "mariage[prenom_mari]"

      assert_select "input#mariage_lieu_nai_mari[name=?]", "mariage[lieu_nai_mari]"

      assert_select "input#mariage_profession_mari[name=?]", "mariage[profession_mari]"

      assert_select "input#mariage_domicil_mari[name=?]", "mariage[domicil_mari]"

      assert_select "input#mariage_nom_prenom_pere_mari[name=?]", "mariage[nom_prenom_pere_mari]"

      assert_select "input#mariage_nom_prenom_mere_mari[name=?]", "mariage[nom_prenom_mere_mari]"

      assert_select "input#mariage_nom_prenom_tm_mari[name=?]", "mariage[nom_prenom_tm_mari]"

      assert_select "input#mariage_lieu_nai_tm_mari[name=?]", "mariage[lieu_nai_tm_mari]"

      assert_select "input#mariage_domicil_tm_mari[name=?]", "mariage[domicil_tm_mari]"

      assert_select "input#mariage_nom_marie[name=?]", "mariage[nom_marie]"

      assert_select "input#mariage_prenom_marie[name=?]", "mariage[prenom_marie]"

      assert_select "input#mariage_lieu_nai_marie[name=?]", "mariage[lieu_nai_marie]"

      assert_select "input#mariage_profession_marie[name=?]", "mariage[profession_marie]"

      assert_select "input#mariage_domicil_marie[name=?]", "mariage[domicil_marie]"

      assert_select "input#mariage_nom_prenom_pere_marie[name=?]", "mariage[nom_prenom_pere_marie]"

      assert_select "input#mariage_nom_prenom_mere_marie[name=?]", "mariage[nom_prenom_mere_marie]"

      assert_select "input#mariage_consente_parent[name=?]", "mariage[consente_parent]"

      assert_select "input#mariage_nom_prenom_tm_marie[name=?]", "mariage[nom_prenom_tm_marie]"

      assert_select "input#mariage_lieu_nai_tm_marie[name=?]", "mariage[lieu_nai_tm_marie]"

      assert_select "input#mariage_domicil_tm_marie[name=?]", "mariage[domicil_tm_marie]"

      assert_select "input#mariage_dot[name=?]", "mariage[dot]"

      assert_select "input#mariage_nom_prenom_officie[name=?]", "mariage[nom_prenom_officie]"

      assert_select "input#mariage_qualite_officie[name=?]", "mariage[qualite_officie]"

      assert_select "input#mariage_n_volet[name=?]", "mariage[n_volet]"
    end
  end
end
