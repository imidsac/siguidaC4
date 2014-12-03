class PersoclasController < ApplicationController
  before_action :set_persocla, only: [:show, :edit, :update, :destroy]

  # GET /persoclas
  # GET /persoclas.json
  def index
    @persoclas = Persocla.all
  end

  # GET /persoclas/1
  # GET /persoclas/1.json
  def show
  end

  # GET /persoclas/new
  def new
    @persocla = Persocla.new
  end

  # GET /persoclas/1/edit
  def edit
  end

  # POST /persoclas
  # POST /persoclas.json
  def create
    @persocla = Persocla.new(persocla_params)

    respond_to do |format|
      if @persocla.save
        format.html { redirect_to @persocla, notice: 'Persocla was successfully created.' }
        format.json { render :show, status: :created, location: @persocla }
      else
        format.html { render :new }
        format.json { render json: @persocla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /persoclas/1
  # PATCH/PUT /persoclas/1.json
  def update
    respond_to do |format|
      if @persocla.update(persocla_params)
        format.html { redirect_to @persocla, notice: 'Persocla was successfully updated.' }
        format.json { render :show, status: :ok, location: @persocla }
      else
        format.html { render :edit }
        format.json { render json: @persocla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /persoclas/1
  # DELETE /persoclas/1.json
  def destroy
    @persocla.destroy
    respond_to do |format|
      format.html { redirect_to persoclas_url, notice: 'Persocla was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_persocla
      @persocla = Persocla.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def persocla_params
      params.require(:persocla).permit(:persocate_id, :num_cla)
    end
end
