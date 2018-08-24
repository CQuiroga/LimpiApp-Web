class RutasController < ApplicationController
  before_action :set_ruta, only: [:show, :edit, :update, :destroy]

  # GET /ruta
  # GET /ruta.json


def index

end


  # GET /ruta/1
  # GET /ruta/1.json
  def show
  end

  # GET /ruta/new
  def new
    @ruta = Rutas.new
  end

  # GET /ruta/1/edit
  def edit
  end

  # POST /ruta
  # POST /ruta.json
  def create
    @ruta = Rutas.new(ruta_params)

    respond_to do |format|
      if @ruta.save
        format.html { redirect_to @ruta, notice: 'Ruta was successfully created.' }
        format.json { render :show, status: :created, location: @ruta }
      else
        format.html { render :new }
        format.json { render json: @ruta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ruta/1
  # PATCH/PUT /ruta/1.json
  def update
    respond_to do |format|
      if @ruta.update(rutum_params)
        format.html { redirect_to @ruta, notice: 'Rutum was successfully updated.' }
        format.json { render :show, status: :ok, location: @ruta }
      else
        format.html { render :edit }
        format.json { render json: @ruta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ruta/1
  # DELETE /ruta/1.json
  def destroy
    @ruta.destroy
    respond_to do |format|
      format.html { redirect_to ruta_url, notice: 'Ruta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ruta
      @ruta = Rutas.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ruta_params
      params.require(:ruta).permit(:ruta, :latitud, :longitud)
    end
end
