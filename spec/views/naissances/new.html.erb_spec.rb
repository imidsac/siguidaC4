require 'rails_helper'

RSpec.describe "naissances/new", :type => :view do
  before(:each) do
    assign(:naissance, Naissance.new(
      :nom => "MyString",
      :prenom => "MyString",
      :sexe => "MyString",
      :local => "MyString",
      :nom_prenom_pere => "MyString",
      :domicil_pere => "MyString",
      :nationalite_pere => "MyString",
      :profession_pere => "MyString",
      :nom_prenom_mere => "MyString",
      :domicil_mere => "MyString",
      :nationalite_mere => "MyString",
      :profession_mere => "MyString",
      :nom_prenom_declare => "MyString",
      :domicil_declare => "MyString",
      :nom_prenom_officie => "MyString",
      :qualite_officie => "MyString",
      :n_volet => "MyString"
    ))
  end

  it "renders new naissance form" do
    render

    assert_select "form[action=?][method=?]", naissances_path, "post" do

      assert_select "input#naissance_nom[name=?]", "naissance[nom]"

      assert_select "input#naissance_prenom[name=?]", "naissance[prenom]"

      assert_select "input#naissance_sexe[name=?]", "naissance[sexe]"

      assert_select "input#naissance_local[name=?]", "naissance[local]"

      assert_select "input#naissance_nom_prenom_pere[name=?]", "naissance[nom_prenom_pere]"

      assert_select "input#naissance_domicil_pere[name=?]", "naissance[domicil_pere]"

      assert_select "input#naissance_nationalite_pere[name=?]", "naissance[nationalite_pere]"

      assert_select "input#naissance_profession_pere[name=?]", "naissance[profession_pere]"

      assert_select "input#naissance_nom_prenom_mere[name=?]", "naissance[nom_prenom_mere]"

      assert_select "input#naissance_domicil_mere[name=?]", "naissance[domicil_mere]"

      assert_select "input#naissance_nationalite_mere[name=?]", "naissance[nationalite_mere]"

      assert_select "input#naissance_profession_mere[name=?]", "naissance[profession_mere]"

      assert_select "input#naissance_nom_prenom_declare[name=?]", "naissance[nom_prenom_declare]"

      assert_select "input#naissance_domicil_declare[name=?]", "naissance[domicil_declare]"

      assert_select "input#naissance_nom_prenom_officie[name=?]", "naissance[nom_prenom_officie]"

      assert_select "input#naissance_qualite_officie[name=?]", "naissance[qualite_officie]"

      assert_select "input#naissance_n_volet[name=?]", "naissance[n_volet]"
    end
  end
end
