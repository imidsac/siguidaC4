class DecesController < ApplicationController
  before_action :set_dece, only: [:show, :edit, :update, :destroy]

  # GET /deces
  # GET /deces.json
  def index
    @deces = Dece.all
  end

  # GET /deces/1
  # GET /deces/1.json
  def show
  end

  # GET /deces/new
  def new
    @dece = Dece.new
  end

  # GET /deces/1/edit
  def edit
  end

  # POST /deces
  # POST /deces.json
  def create
    @dece = Dece.new(dece_params)

    respond_to do |format|
      if @dece.save
        format.html { redirect_to @dece, notice: 'Dece was successfully created.' }
        format.json { render :show, status: :created, location: @dece }
      else
        format.html { render :new }
        format.json { render json: @dece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deces/1
  # PATCH/PUT /deces/1.json
  def update
    respond_to do |format|
      if @dece.update(dece_params)
        format.html { redirect_to @dece, notice: 'Dece was successfully updated.' }
        format.json { render :show, status: :ok, location: @dece }
      else
        format.html { render :edit }
        format.json { render json: @dece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deces/1
  # DELETE /deces/1.json
  def destroy
    @dece.destroy
    respond_to do |format|
      format.html { redirect_to deces_url, notice: 'Dece was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dece
      @dece = Dece.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dece_params
      params.require(:dece).permit(:date_dc, :local, :nom, :prenom, :date_nai, :lieu_nai, :sexe, :situ_mat, :profession, :domicil, :nom_prenom_pere, :nom_prenom_mere, :nom_prenom_declare, :domicil_declare, :profession_declare, :date_declare_dece, :nom_prenom_officie, :qualite_officie, :date_officie, :n_volet)
    end
end
