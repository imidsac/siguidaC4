class PersocatesController < ApplicationController
  before_action :set_persocate, only: [:show, :edit, :update, :destroy]

  # GET /persocates
  # GET /persocates.json
  def index
    @persocates = Persocate.all
  end

  # GET /persocates/1
  # GET /persocates/1.json
  def show
  end

  # GET /persocates/new
  def new
    @persocate = Persocate.new
  end

  # GET /persocates/1/edit
  def edit
  end

  # POST /persocates
  # POST /persocates.json
  def create
    @persocate = Persocate.new(persocate_params)

    respond_to do |format|
      if @persocate.save
        format.html { redirect_to @persocate, notice: 'Persocate was successfully created.' }
        format.json { render :show, status: :created, location: @persocate }
      else
        format.html { render :new }
        format.json { render json: @persocate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /persocates/1
  # PATCH/PUT /persocates/1.json
  def update
    respond_to do |format|
      if @persocate.update(persocate_params)
        format.html { redirect_to @persocate, notice: 'Persocate was successfully updated.' }
        format.json { render :show, status: :ok, location: @persocate }
      else
        format.html { render :edit }
        format.json { render json: @persocate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /persocates/1
  # DELETE /persocates/1.json
  def destroy
    @persocate.destroy
    respond_to do |format|
      format.html { redirect_to persocates_url, notice: 'Persocate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_persocate
      @persocate = Persocate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def persocate_params
      params.require(:persocate).permit(:nom_cate, :type_cat)
    end
end
