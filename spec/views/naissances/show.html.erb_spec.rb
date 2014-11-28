require 'rails_helper'

RSpec.describe "naissances/show", :type => :view do
  before(:each) do
    @naissance = assign(:naissance, Naissance.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nom/)
    expect(rendered).to match(/Prenom/)
    expect(rendered).to match(/Sexe/)
    expect(rendered).to match(/Local/)
    expect(rendered).to match(/Nom Prenom Pere/)
    expect(rendered).to match(/Domicil Pere/)
    expect(rendered).to match(/Nationalite Pere/)
    expect(rendered).to match(/Profession Pere/)
    expect(rendered).to match(/Nom Prenom Mere/)
    expect(rendered).to match(/Domicil Mere/)
    expect(rendered).to match(/Nationalite Mere/)
    expect(rendered).to match(/Profession Mere/)
    expect(rendered).to match(/Nom Prenom Declare/)
    expect(rendered).to match(/Domicil Declare/)
    expect(rendered).to match(/Nom Prenom Officie/)
    expect(rendered).to match(/Qualite Officie/)
    expect(rendered).to match(/N Volet/)
  end
end
