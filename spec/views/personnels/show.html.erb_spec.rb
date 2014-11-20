require 'rails_helper'

RSpec.describe "personnels/show", :type => :view do
  before(:each) do
    @personnel = assign(:personnel, Personnel.create!(
      :n_decision => "N Decision",
      :n_mle => "N Mle",
      :n_nina => "N Nina",
      :nom => "Nom",
      :prenom => "Prenom",
      :lieu_nai => "Lieu Nai",
      :sexe => "Sexe",
      :situ_f => "Situ F",
      :nb_enf => 1,
      :corps => "Corps",
      :em_occ => "Em Occ",
      :phone => "Phone",
      :email => "Email",
      :compte_banc => "Compte Banc",
      :address => "Address",
      :salaire_b => "9.99",
      :regime_matrimonial => "Regime Matrimonial",
      :nom_prenom_pere => "Nom Prenom Pere",
      :nom_prenom_mere => "Nom Prenom Mere",
      :etat => "Etat"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/N Decision/)
    expect(rendered).to match(/N Mle/)
    expect(rendered).to match(/N Nina/)
    expect(rendered).to match(/Nom/)
    expect(rendered).to match(/Prenom/)
    expect(rendered).to match(/Lieu Nai/)
    expect(rendered).to match(/Sexe/)
    expect(rendered).to match(/Situ F/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Corps/)
    expect(rendered).to match(/Em Occ/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Compte Banc/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Regime Matrimonial/)
    expect(rendered).to match(/Nom Prenom Pere/)
    expect(rendered).to match(/Nom Prenom Mere/)
    expect(rendered).to match(/Etat/)
  end
end
