class MariagesController < ApplicationController
  before_action :set_mariage, only: [:show, :edit, :update, :destroy]

  # GET /mariages
  # GET /mariages.json
  def index
    @mariages = Mariage.all
  end

  # GET /mariages/1
  # GET /mariages/1.json
  def show
  end

  # GET /mariages/new
  def new
    @mariage = Mariage.new
  end

  # GET /mariages/1/edit
  def edit
  end

  # POST /mariages
  # POST /mariages.json
  def create
    @mariage = Mariage.new(mariage_params)

    respond_to do |format|
      if @mariage.save
        format.html { redirect_to @mariage, notice: 'Mariage was successfully created.' }
        format.json { render :show, status: :created, location: @mariage }
      else
        format.html { render :new }
        format.json { render json: @mariage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mariages/1
  # PATCH/PUT /mariages/1.json
  def update
    respond_to do |format|
      if @mariage.update(mariage_params)
        format.html { redirect_to @mariage, notice: 'Mariage was successfully updated.' }
        format.json { render :show, status: :ok, location: @mariage }
      else
        format.html { render :edit }
        format.json { render json: @mariage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mariages/1
  # DELETE /mariages/1.json
  def destroy
    @mariage.destroy
    respond_to do |format|
      format.html { redirect_to mariages_url, notice: 'Mariage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mariage
      @mariage = Mariage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mariage_params
      params.require(:mariage).permit(:nom_mari, :prenom_mari, :date_nai_mari, :lieu_nai_mari, :profession_mari, :domicil_mari, :nom_prenom_pere_mari, :nom_prenom_mere_mari, :nom_prenom_tm_mari, :date_nai_tm_mari, :lieu_nai_tm_mari, :domicil_tm_mari, :nom_marie, :prenom_marie, :date_nai_marie, :lieu_nai_marie, :profession_marie, :domicil_marie, :nom_prenom_pere_marie, :nom_prenom_mere_marie, :consente_parent, :nom_prenom_tm_marie, :date_nai_tm_marie, :lieu_nai_tm_marie, :domicil_tm_marie, :dot, :nom_prenom_officie, :qualite_officie, :date_officie, :n_volet)
    end
end
