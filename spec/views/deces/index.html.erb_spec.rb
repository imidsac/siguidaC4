require 'rails_helper'

RSpec.describe "deces/index", :type => :view do
  before(:each) do
    assign(:deces, [
      Dece.create!(
        :local => "Local",
        :nom => "Nom",
        :prenom => "Prenom",
        :lieu_nai => "Lieu Nai",
        :sexe => "Sexe",
        :situ_mat => "Situ Mat",
        :profession => "Profession",
        :domicil => "Domicil",
        :nom_prenom_pere => "Nom Prenom Pere",
        :nom_prenom_mere => "Nom Prenom Mere",
        :nom_prenom_declare => "Nom Prenom Declare",
        :domicil_declare => "Domicil Declare",
        :profession_declare => "Profession Declare",
        :nom_prenom_officie => "Nom Prenom Officie",
        :qualite_officie => "Qualite Officie",
        :n_volet => "N Volet"
      ),
      Dece.create!(
        :local => "Local",
        :nom => "Nom",
        :prenom => "Prenom",
        :lieu_nai => "Lieu Nai",
        :sexe => "Sexe",
        :situ_mat => "Situ Mat",
        :profession => "Profession",
        :domicil => "Domicil",
        :nom_prenom_pere => "Nom Prenom Pere",
        :nom_prenom_mere => "Nom Prenom Mere",
        :nom_prenom_declare => "Nom Prenom Declare",
        :domicil_declare => "Domicil Declare",
        :profession_declare => "Profession Declare",
        :nom_prenom_officie => "Nom Prenom Officie",
        :qualite_officie => "Qualite Officie",
        :n_volet => "N Volet"
      )
    ])
  end

  it "renders a list of deces" do
    render
    assert_select "tr>td", :text => "Local".to_s, :count => 2
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
    assert_select "tr>td", :text => "Prenom".to_s, :count => 2
    assert_select "tr>td", :text => "Lieu Nai".to_s, :count => 2
    assert_select "tr>td", :text => "Sexe".to_s, :count => 2
    assert_select "tr>td", :text => "Situ Mat".to_s, :count => 2
    assert_select "tr>td", :text => "Profession".to_s, :count => 2
    assert_select "tr>td", :text => "Domicil".to_s, :count => 2
    assert_select "tr>td", :text => "Nom Prenom Pere".to_s, :count => 2
    assert_select "tr>td", :text => "Nom Prenom Mere".to_s, :count => 2
    assert_select "tr>td", :text => "Nom Prenom Declare".to_s, :count => 2
    assert_select "tr>td", :text => "Domicil Declare".to_s, :count => 2
    assert_select "tr>td", :text => "Profession Declare".to_s, :count => 2
    assert_select "tr>td", :text => "Nom Prenom Officie".to_s, :count => 2
    assert_select "tr>td", :text => "Qualite Officie".to_s, :count => 2
    assert_select "tr>td", :text => "N Volet".to_s, :count => 2
  end
end
