class NaissancesController < ApplicationController
  before_action :set_naissance, only: [:show, :edit, :update, :destroy]

  # GET /naissances
  # GET /naissances.json
  def index
    @naissances = Naissance.all
  end

  # GET /naissances/1
  # GET /naissances/1.json
  def show
  end

  # GET /naissances/new
  def new
    @naissance = Naissance.new
  end

  # GET /naissances/1/edit
  def edit
  end

  # POST /naissances
  # POST /naissances.json
  def create
    @naissance = Naissance.new(naissance_params)

    respond_to do |format|
      if @naissance.save
        format.html { redirect_to @naissance, notice: 'Naissance was successfully created.' }
        format.json { render :show, status: :created, location: @naissance }
      else
        format.html { render :new }
        format.json { render json: @naissance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /naissances/1
  # PATCH/PUT /naissances/1.json
  def update
    respond_to do |format|
      if @naissance.update(naissance_params)
        format.html { redirect_to @naissance, notice: 'Naissance was successfully updated.' }
        format.json { render :show, status: :ok, location: @naissance }
      else
        format.html { render :edit }
        format.json { render json: @naissance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /naissances/1
  # DELETE /naissances/1.json
  def destroy
    @naissance.destroy
    respond_to do |format|
      format.html { redirect_to naissances_url, notice: 'Naissance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_naissance
      @naissance = Naissance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def naissance_params
      params.require(:naissance).permit(:date_n, :nom, :prenom, :sexe, :local, :nom_prenom_pere, :domicil_pere, :date_nai_pere, :nationalite_pere, :profession_pere, :nom_prenom_mere, :domicil_mere, :date_nai_mere, :nationalite_mere, :profession_mere, :nom_prenom_declare, :domicil_declare, :date_nai_declare, :date_declare, :nom_prenom_officie, :qualite_officie, :date_officie, :n_volet)
    end
end
