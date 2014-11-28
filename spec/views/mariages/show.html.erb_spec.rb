require 'rails_helper'

RSpec.describe "mariages/show", :type => :view do
  before(:each) do
    @mariage = assign(:mariage, Mariage.create!(
      :nom_mari => "Nom Mari",
      :prenom_mari => "Prenom Mari",
      :lieu_nai_mari => "Lieu Nai Mari",
      :profession_mari => "Profession Mari",
      :domicil_mari => "Domicil Mari",
      :nom_prenom_pere_mari => "Nom Prenom Pere Mari",
      :nom_prenom_mere_mari => "Nom Prenom Mere Mari",
      :nom_prenom_tm_mari => "Nom Prenom Tm Mari",
      :lieu_nai_tm_mari => "Lieu Nai Tm Mari",
      :domicil_tm_mari => "Domicil Tm Mari",
      :nom_marie => "Nom Marie",
      :prenom_marie => "Prenom Marie",
      :lieu_nai_marie => "Lieu Nai Marie",
      :profession_marie => "Profession Marie",
      :domicil_marie => "Domicil Marie",
      :nom_prenom_pere_marie => "Nom Prenom Pere Marie",
      :nom_prenom_mere_marie => "Nom Prenom Mere Marie",
      :consente_parent => "Consente Parent",
      :nom_prenom_tm_marie => "Nom Prenom Tm Marie",
      :lieu_nai_tm_marie => "Lieu Nai Tm Marie",
      :domicil_tm_marie => "Domicil Tm Marie",
      :dot => "9.99",
      :nom_prenom_officie => "Nom Prenom Officie",
      :qualite_officie => "Qualite Officie",
      :n_volet => "N Volet"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nom Mari/)
    expect(rendered).to match(/Prenom Mari/)
    expect(rendered).to match(/Lieu Nai Mari/)
    expect(rendered).to match(/Profession Mari/)
    expect(rendered).to match(/Domicil Mari/)
    expect(rendered).to match(/Nom Prenom Pere Mari/)
    expect(rendered).to match(/Nom Prenom Mere Mari/)
    expect(rendered).to match(/Nom Prenom Tm Mari/)
    expect(rendered).to match(/Lieu Nai Tm Mari/)
    expect(rendered).to match(/Domicil Tm Mari/)
    expect(rendered).to match(/Nom Marie/)
    expect(rendered).to match(/Prenom Marie/)
    expect(rendered).to match(/Lieu Nai Marie/)
    expect(rendered).to match(/Profession Marie/)
    expect(rendered).to match(/Domicil Marie/)
    expect(rendered).to match(/Nom Prenom Pere Marie/)
    expect(rendered).to match(/Nom Prenom Mere Marie/)
    expect(rendered).to match(/Consente Parent/)
    expect(rendered).to match(/Nom Prenom Tm Marie/)
    expect(rendered).to match(/Lieu Nai Tm Marie/)
    expect(rendered).to match(/Domicil Tm Marie/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Nom Prenom Officie/)
    expect(rendered).to match(/Qualite Officie/)
    expect(rendered).to match(/N Volet/)
  end
end
