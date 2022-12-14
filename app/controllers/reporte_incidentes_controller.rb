class ReporteIncidentesController < ApplicationController
  before_action :set_reporte_incidente, only: %i[ show edit update destroy ]

  # GET /reporte_incidentes or /reporte_incidentes.json
  def index
    @reporte_incidentes = ReporteIncidente.all
  end

  # GET /reporte_incidentes/1 or /reporte_incidentes/1.json
  def show
  end

  # GET /reporte_incidentes/new
  def new
    @reporte_incidente = ReporteIncidente.new
  end

  # GET /reporte_incidentes/1/edit
  def edit
  end

  # POST /reporte_incidentes or /reporte_incidentes.json
  def create
    @reporte_incidente = ReporteIncidente.new(reporte_incidente_params)

    respond_to do |format|
      if @reporte_incidente.save
        format.html { redirect_to reporte_incidente_url(@reporte_incidente), notice: "Reporte incidente was successfully created." }
        format.json { render :show, status: :created, location: @reporte_incidente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reporte_incidente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reporte_incidentes/1 or /reporte_incidentes/1.json
  def update
    respond_to do |format|
      if @reporte_incidente.update(reporte_incidente_params)
        format.html { redirect_to reporte_incidente_url(@reporte_incidente), notice: "Reporte incidente was successfully updated." }
        format.json { render :show, status: :ok, location: @reporte_incidente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reporte_incidente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reporte_incidentes/1 or /reporte_incidentes/1.json
  def destroy
    @reporte_incidente.destroy

    respond_to do |format|
      format.html { redirect_to reporte_incidentes_url, notice: "Reporte incidente was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reporte_incidente
      @reporte_incidente = ReporteIncidente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reporte_incidente_params
      params.require(:reporte_incidente).permit(:tipo, :estadoPista, :estadoTrafico, :region, :provincia, :distrito, :ciudad)
    end
end
