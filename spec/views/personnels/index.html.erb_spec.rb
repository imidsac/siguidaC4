require 'rails_helper'

RSpec.describe "personnels/index", :type => :view do
  before(:each) do
    assign(:personnels, [
      Personnel.create!(
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
      ),
      Personnel.create!(
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
      )
    ])
  end

  it "renders a list of personnels" do
    render
    assert_select "tr>td", :text => "N Decision".to_s, :count => 2
    assert_select "tr>td", :text => "N Mle".to_s, :count => 2
    assert_select "tr>td", :text => "N Nina".to_s, :count => 2
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
    assert_select "tr>td", :text => "Prenom".to_s, :count => 2
    assert_select "tr>td", :text => "Lieu Nai".to_s, :count => 2
    assert_select "tr>td", :text => "Sexe".to_s, :count => 2
    assert_select "tr>td", :text => "Situ F".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Corps".to_s, :count => 2
    assert_select "tr>td", :text => "Em Occ".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Compte Banc".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Regime Matrimonial".to_s, :count => 2
    assert_select "tr>td", :text => "Nom Prenom Pere".to_s, :count => 2
    assert_select "tr>td", :text => "Nom Prenom Mere".to_s, :count => 2
    assert_select "tr>td", :text => "Etat".to_s, :count => 2
  end
end
