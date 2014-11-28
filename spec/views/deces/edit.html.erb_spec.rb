require 'rails_helper'

RSpec.describe "deces/edit", :type => :view do
  before(:each) do
    @dece = assign(:dece, Dece.create!(
      :local => "MyString",
      :nom => "MyString",
      :prenom => "MyString",
      :lieu_nai => "MyString",
      :sexe => "MyString",
      :situ_mat => "MyString",
      :profession => "MyString",
      :domicil => "MyString",
      :nom_prenom_pere => "MyString",
      :nom_prenom_mere => "MyString",
      :nom_prenom_declare => "MyString",
      :domicil_declare => "MyString",
      :profession_declare => "MyString",
      :nom_prenom_officie => "MyString",
      :qualite_officie => "MyString",
      :n_volet => "MyString"
    ))
  end

  it "renders the edit dece form" do
    render

    assert_select "form[action=?][method=?]", dece_path(@dece), "post" do

      assert_select "input#dece_local[name=?]", "dece[local]"

      assert_select "input#dece_nom[name=?]", "dece[nom]"

      assert_select "input#dece_prenom[name=?]", "dece[prenom]"

      assert_select "input#dece_lieu_nai[name=?]", "dece[lieu_nai]"

      assert_select "input#dece_sexe[name=?]", "dece[sexe]"

      assert_select "input#dece_situ_mat[name=?]", "dece[situ_mat]"

      assert_select "input#dece_profession[name=?]", "dece[profession]"

      assert_select "input#dece_domicil[name=?]", "dece[domicil]"

      assert_select "input#dece_nom_prenom_pere[name=?]", "dece[nom_prenom_pere]"

      assert_select "input#dece_nom_prenom_mere[name=?]", "dece[nom_prenom_mere]"

      assert_select "input#dece_nom_prenom_declare[name=?]", "dece[nom_prenom_declare]"

      assert_select "input#dece_domicil_declare[name=?]", "dece[domicil_declare]"

      assert_select "input#dece_profession_declare[name=?]", "dece[profession_declare]"

      assert_select "input#dece_nom_prenom_officie[name=?]", "dece[nom_prenom_officie]"

      assert_select "input#dece_qualite_officie[name=?]", "dece[qualite_officie]"

      assert_select "input#dece_n_volet[name=?]", "dece[n_volet]"
    end
  end
end
