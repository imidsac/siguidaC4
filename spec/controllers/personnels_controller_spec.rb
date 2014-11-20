require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe PersonnelsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Personnel. As you add validations to Personnel, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PersonnelsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all personnels as @personnels" do
      personnel = Personnel.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:personnels)).to eq([personnel])
    end
  end

  describe "GET show" do
    it "assigns the requested personnel as @personnel" do
      personnel = Personnel.create! valid_attributes
      get :show, {:id => personnel.to_param}, valid_session
      expect(assigns(:personnel)).to eq(personnel)
    end
  end

  describe "GET new" do
    it "assigns a new personnel as @personnel" do
      get :new, {}, valid_session
      expect(assigns(:personnel)).to be_a_new(Personnel)
    end
  end

  describe "GET edit" do
    it "assigns the requested personnel as @personnel" do
      personnel = Personnel.create! valid_attributes
      get :edit, {:id => personnel.to_param}, valid_session
      expect(assigns(:personnel)).to eq(personnel)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Personnel" do
        expect {
          post :create, {:personnel => valid_attributes}, valid_session
        }.to change(Personnel, :count).by(1)
      end

      it "assigns a newly created personnel as @personnel" do
        post :create, {:personnel => valid_attributes}, valid_session
        expect(assigns(:personnel)).to be_a(Personnel)
        expect(assigns(:personnel)).to be_persisted
      end

      it "redirects to the created personnel" do
        post :create, {:personnel => valid_attributes}, valid_session
        expect(response).to redirect_to(Personnel.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved personnel as @personnel" do
        post :create, {:personnel => invalid_attributes}, valid_session
        expect(assigns(:personnel)).to be_a_new(Personnel)
      end

      it "re-renders the 'new' template" do
        post :create, {:personnel => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested personnel" do
        personnel = Personnel.create! valid_attributes
        put :update, {:id => personnel.to_param, :personnel => new_attributes}, valid_session
        personnel.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested personnel as @personnel" do
        personnel = Personnel.create! valid_attributes
        put :update, {:id => personnel.to_param, :personnel => valid_attributes}, valid_session
        expect(assigns(:personnel)).to eq(personnel)
      end

      it "redirects to the personnel" do
        personnel = Personnel.create! valid_attributes
        put :update, {:id => personnel.to_param, :personnel => valid_attributes}, valid_session
        expect(response).to redirect_to(personnel)
      end
    end

    describe "with invalid params" do
      it "assigns the personnel as @personnel" do
        personnel = Personnel.create! valid_attributes
        put :update, {:id => personnel.to_param, :personnel => invalid_attributes}, valid_session
        expect(assigns(:personnel)).to eq(personnel)
      end

      it "re-renders the 'edit' template" do
        personnel = Personnel.create! valid_attributes
        put :update, {:id => personnel.to_param, :personnel => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested personnel" do
      personnel = Personnel.create! valid_attributes
      expect {
        delete :destroy, {:id => personnel.to_param}, valid_session
      }.to change(Personnel, :count).by(-1)
    end

    it "redirects to the personnels list" do
      personnel = Personnel.create! valid_attributes
      delete :destroy, {:id => personnel.to_param}, valid_session
      expect(response).to redirect_to(personnels_url)
    end
  end

end