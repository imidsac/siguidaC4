class PersonnelsController < ApplicationController
  before_action :set_personnel, only: [:show, :edit, :update, :destroy]

  # GET /personnels
  # GET /personnels.json
  def index
    #@personnels = Personnel.all
    @q = Personnel.paginate(:page => params[:page], :per_page => 10).search(params[:q])
    @personnels = @q.result
  end

  # GET /personnels/1
  # GET /personnels/1.json
  def show
  end

  # GET /personnels/new
  def new
    @personnel = Personnel.new
  end

  # GET /personnels/1/edit
  def edit
  end

  # POST /personnels
  # POST /personnels.json
  def create
    @personnel = Personnel.new(personnel_params)

    respond_to do |format|
      if @personnel.save
        format.html { redirect_to @personnel, notice: 'Personnel was successfully created.' }
        format.json { render :show, status: :created, location: @personnel }
      else
        format.html { render :new }
        format.json { render json: @personnel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personnels/1
  # PATCH/PUT /personnels/1.json
  def update
    respond_to do |format|
      if @personnel.update(personnel_params)
        format.html { redirect_to @personnel, notice: 'Personnel was successfully updated.' }
        format.json { render :show, status: :ok, location: @personnel }
      else
        format.html { render :edit }
        format.json { render json: @personnel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personnels/1
  # DELETE /personnels/1.json
  def destroy
    @personnel.destroy
    respond_to do |format|
      format.html { redirect_to personnels_url, notice: 'Personnel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personnel
      @personnel = Personnel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personnel_params
      params.require(:personnel).permit(:n_decision, :n_mle, :n_nina, :nom, :prenom, :date_nai, :lieu_nai, :sexe, :situ_f, :nb_enf, :corps, :em_occ, :phone, :email, :compte_banc, :address, :date_recr, :salaire_b, :regime_matrimonial, :nom_prenom_pere, :date_nai_pere, :nom_prenom_mere, :date_nai_mere, :etat, :cover)
    end
end
