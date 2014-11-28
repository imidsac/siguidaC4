require 'rails_helper'

RSpec.describe "naissances/index", :type => :view do
  before(:each) do
    assign(:naissances, [
      Naissance.create!(
        :nom => "Nom",
        :prenom => "Prenom",
        :sexe => "Sexe",
        :local => "Local",
        :nom_prenom_pere => "Nom Prenom Pere",
        :domicil_pere => "Domicil Pere",
        :nationalite_pere => "Nationalite Pere",
        :profession_pere => "Profession Pere",
        :nom_prenom_mere => "Nom Prenom Mere",
        :domicil_mere => "Domicil Mere",
        :nationalite_mere => "Nationalite Mere",
        :profession_mere => "Profession Mere",
        :nom_prenom_declare => "Nom Prenom Declare",
        :domicil_declare => "Domicil Declare",
        :nom_prenom_officie => "Nom Prenom Officie",
        :qualite_officie => "Qualite Officie",
        :n_volet => "N Volet"
      ),
      Naissance.create!(
        :nom => "Nom",
        :prenom => "Prenom",
        :sexe => "Sexe",
        :local => "Local",
        :nom_prenom_pere => "Nom Prenom Pere",
        :domicil_pere => "Domicil Pere",
        :nationalite_pere => "Nationalite Pere",
        :profession_pere => "Profession Pere",
        :nom_prenom_mere => "Nom Prenom Mere",
        :domicil_mere => "Domicil Mere",
        :nationalite_mere => "Nationalite Mere",
        :profession_mere => "Profession Mere",
        :nom_prenom_declare => "Nom Prenom Declare",
        :domicil_declare => "Domicil Declare",
        :nom_prenom_officie => "Nom Prenom Officie",
        :qualite_officie => "Qualite Officie",
        :n_volet => "N Volet"
      )
    ])
  end

  it "renders a list of naissances" do
    render
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
    assert_select "tr>td", :text => "Prenom".to_s, :count => 2
    assert_select "tr>td", :text => "Sexe".to_s, :count => 2
    assert_select "tr>td", :text => "Local".to_s, :count => 2
    assert_select "tr>td", :text => "Nom Prenom Pere".to_s, :count => 2
    assert_select "tr>td", :text => "Domicil Pere".to_s, :count => 2
    assert_select "tr>td", :text => "Nationalite Pere".to_s, :count => 2
    assert_select "tr>td", :text => "Profession Pere".to_s, :count => 2
    assert_select "tr>td", :text => "Nom Prenom Mere".to_s, :count => 2
    assert_select "tr>td", :text => "Domicil Mere".to_s, :count => 2
    assert_select "tr>td", :text => "Nationalite Mere".to_s, :count => 2
    assert_select "tr>td", :text => "Profession Mere".to_s, :count => 2
    assert_select "tr>td", :text => "Nom Prenom Declare".to_s, :count => 2
    assert_select "tr>td", :text => "Domicil Declare".to_s, :count => 2
    assert_select "tr>td", :text => "Nom Prenom Officie".to_s, :count => 2
    assert_select "tr>td", :text => "Qualite Officie".to_s, :count => 2
    assert_select "tr>td", :text => "N Volet".to_s, :count => 2
  end
end
