require 'rails_helper'

RSpec.describe "personnels/edit", :type => :view do
  before(:each) do
    @personnel = assign(:personnel, Personnel.create!(
      :n_decision => "MyString",
      :n_mle => "MyString",
      :n_nina => "MyString",
      :nom => "MyString",
      :prenom => "MyString",
      :lieu_nai => "MyString",
      :sexe => "MyString",
      :situ_f => "MyString",
      :nb_enf => 1,
      :corps => "MyString",
      :em_occ => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :compte_banc => "MyString",
      :address => "MyString",
      :salaire_b => "9.99",
      :regime_matrimonial => "MyString",
      :nom_prenom_pere => "MyString",
      :nom_prenom_mere => "MyString",
      :etat => "MyString"
    ))
  end

  it "renders the edit personnel form" do
    render

    assert_select "form[action=?][method=?]", personnel_path(@personnel), "post" do

      assert_select "input#personnel_n_decision[name=?]", "personnel[n_decision]"

      assert_select "input#personnel_n_mle[name=?]", "personnel[n_mle]"

      assert_select "input#personnel_n_nina[name=?]", "personnel[n_nina]"

      assert_select "input#personnel_nom[name=?]", "personnel[nom]"

      assert_select "input#personnel_prenom[name=?]", "personnel[prenom]"

      assert_select "input#personnel_lieu_nai[name=?]", "personnel[lieu_nai]"

      assert_select "input#personnel_sexe[name=?]", "personnel[sexe]"

      assert_select "input#personnel_situ_f[name=?]", "personnel[situ_f]"

      assert_select "input#personnel_nb_enf[name=?]", "personnel[nb_enf]"

      assert_select "input#personnel_corps[name=?]", "personnel[corps]"

      assert_select "input#personnel_em_occ[name=?]", "personnel[em_occ]"

      assert_select "input#personnel_phone[name=?]", "personnel[phone]"

      assert_select "input#personnel_email[name=?]", "personnel[email]"

      assert_select "input#personnel_compte_banc[name=?]", "personnel[compte_banc]"

      assert_select "input#personnel_address[name=?]", "personnel[address]"

      assert_select "input#personnel_salaire_b[name=?]", "personnel[salaire_b]"

      assert_select "input#personnel_regime_matrimonial[name=?]", "personnel[regime_matrimonial]"

      assert_select "input#personnel_nom_prenom_pere[name=?]", "personnel[nom_prenom_pere]"

      assert_select "input#personnel_nom_prenom_mere[name=?]", "personnel[nom_prenom_mere]"

      assert_select "input#personnel_etat[name=?]", "personnel[etat]"
    end
  end
end
