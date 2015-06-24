class CinesController < ApplicationController
  before_action :set_cine, only: [:show, :edit, :update, :destroy]

  # GET /cines
  # GET /cines.json
  def index
    @cines = Cine.all
  end

  # GET /cines/1
  # GET /cines/1.json
  def show
  end

  # GET /cines/new
  def new
    @cine = Cine.new
  end

  # GET /cines/1/edit
  def edit
  end

  # POST /cines
  # POST /cines.json
  def create
    @cine = Cine.new(cine_params)

    respond_to do |format|
      if @cine.save
        format.html { redirect_to @cine, notice: 'Cine was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cine }
      else
        format.html { render action: 'new' }
        format.json { render json: @cine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cines/1
  # PATCH/PUT /cines/1.json
  def update
    respond_to do |format|
      if @cine.update(cine_params)
        format.html { redirect_to @cine, notice: 'Cine was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cines/1
  # DELETE /cines/1.json
  def destroy
    @cine.destroy
    respond_to do |format|
      format.html { redirect_to cines_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cine
      @cine = Cine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cine_params
      params.require(:cine).permit(:pelicula, :raiting)
    end
end
