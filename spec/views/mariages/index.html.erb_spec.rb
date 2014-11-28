require 'rails_helper'

RSpec.describe "mariages/index", :type => :view do
  before(:each) do
    assign(:mariages, [
      Mariage.create!(
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
      ),
      Mariage.create!(
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
      )
    ])
  end

  it "renders a list of mariages" do
    render
    assert_select "tr>td", :text => "Nom Mari".to_s, :count => 2
    assert_select "tr>td", :text => "Prenom Mari".to_s, :count => 2
    assert_select "tr>td", :text => "Lieu Nai Mari".to_s, :count => 2
    assert_select "tr>td", :text => "Profession Mari".to_s, :count => 2
    assert_select "tr>td", :text => "Domicil Mari".to_s, :count => 2
    assert_select "tr>td", :text => "Nom Prenom Pere Mari".to_s, :count => 2
    assert_select "tr>td", :text => "Nom Prenom Mere Mari".to_s, :count => 2
    assert_select "tr>td", :text => "Nom Prenom Tm Mari".to_s, :count => 2
    assert_select "tr>td", :text => "Lieu Nai Tm Mari".to_s, :count => 2
    assert_select "tr>td", :text => "Domicil Tm Mari".to_s, :count => 2
    assert_select "tr>td", :text => "Nom Marie".to_s, :count => 2
    assert_select "tr>td", :text => "Prenom Marie".to_s, :count => 2
    assert_select "tr>td", :text => "Lieu Nai Marie".to_s, :count => 2
    assert_select "tr>td", :text => "Profession Marie".to_s, :count => 2
    assert_select "tr>td", :text => "Domicil Marie".to_s, :count => 2
    assert_select "tr>td", :text => "Nom Prenom Pere Marie".to_s, :count => 2
    assert_select "tr>td", :text => "Nom Prenom Mere Marie".to_s, :count => 2
    assert_select "tr>td", :text => "Consente Parent".to_s, :count => 2
    assert_select "tr>td", :text => "Nom Prenom Tm Marie".to_s, :count => 2
    assert_select "tr>td", :text => "Lieu Nai Tm Marie".to_s, :count => 2
    assert_select "tr>td", :text => "Domicil Tm Marie".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Nom Prenom Officie".to_s, :count => 2
    assert_select "tr>td", :text => "Qualite Officie".to_s, :count => 2
    assert_select "tr>td", :text => "N Volet".to_s, :count => 2
  end
end
