require 'rails_helper'

RSpec.describe "deces/show", :type => :view do
  before(:each) do
    @dece = assign(:dece, Dece.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Local/)
    expect(rendered).to match(/Nom/)
    expect(rendered).to match(/Prenom/)
    expect(rendered).to match(/Lieu Nai/)
    expect(rendered).to match(/Sexe/)
    expect(rendered).to match(/Situ Mat/)
    expect(rendered).to match(/Profession/)
    expect(rendered).to match(/Domicil/)
    expect(rendered).to match(/Nom Prenom Pere/)
    expect(rendered).to match(/Nom Prenom Mere/)
    expect(rendered).to match(/Nom Prenom Declare/)
    expect(rendered).to match(/Domicil Declare/)
    expect(rendered).to match(/Profession Declare/)
    expect(rendered).to match(/Nom Prenom Officie/)
    expect(rendered).to match(/Qualite Officie/)
    expect(rendered).to match(/N Volet/)
  end
end
