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

RSpec.describe CentresController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Centre. As you add validations to Centre, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CentresController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all centres as @centres" do
      centre = Centre.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:centres)).to eq([centre])
    end
  end

  describe "GET show" do
    it "assigns the requested centre as @centre" do
      centre = Centre.create! valid_attributes
      get :show, {:id => centre.to_param}, valid_session
      expect(assigns(:centre)).to eq(centre)
    end
  end

  describe "GET new" do
    it "assigns a new centre as @centre" do
      get :new, {}, valid_session
      expect(assigns(:centre)).to be_a_new(Centre)
    end
  end

  describe "GET edit" do
    it "assigns the requested centre as @centre" do
      centre = Centre.create! valid_attributes
      get :edit, {:id => centre.to_param}, valid_session
      expect(assigns(:centre)).to eq(centre)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Centre" do
        expect {
          post :create, {:centre => valid_attributes}, valid_session
        }.to change(Centre, :count).by(1)
      end

      it "assigns a newly created centre as @centre" do
        post :create, {:centre => valid_attributes}, valid_session
        expect(assigns(:centre)).to be_a(Centre)
        expect(assigns(:centre)).to be_persisted
      end

      it "redirects to the created centre" do
        post :create, {:centre => valid_attributes}, valid_session
        expect(response).to redirect_to(Centre.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved centre as @centre" do
        post :create, {:centre => invalid_attributes}, valid_session
        expect(assigns(:centre)).to be_a_new(Centre)
      end

      it "re-renders the 'new' template" do
        post :create, {:centre => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested centre" do
        centre = Centre.create! valid_attributes
        put :update, {:id => centre.to_param, :centre => new_attributes}, valid_session
        centre.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested centre as @centre" do
        centre = Centre.create! valid_attributes
        put :update, {:id => centre.to_param, :centre => valid_attributes}, valid_session
        expect(assigns(:centre)).to eq(centre)
      end

      it "redirects to the centre" do
        centre = Centre.create! valid_attributes
        put :update, {:id => centre.to_param, :centre => valid_attributes}, valid_session
        expect(response).to redirect_to(centre)
      end
    end

    describe "with invalid params" do
      it "assigns the centre as @centre" do
        centre = Centre.create! valid_attributes
        put :update, {:id => centre.to_param, :centre => invalid_attributes}, valid_session
        expect(assigns(:centre)).to eq(centre)
      end

      it "re-renders the 'edit' template" do
        centre = Centre.create! valid_attributes
        put :update, {:id => centre.to_param, :centre => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested centre" do
      centre = Centre.create! valid_attributes
      expect {
        delete :destroy, {:id => centre.to_param}, valid_session
      }.to change(Centre, :count).by(-1)
    end

    it "redirects to the centres list" do
      centre = Centre.create! valid_attributes
      delete :destroy, {:id => centre.to_param}, valid_session
      expect(response).to redirect_to(centres_url)
    end
  end

end
