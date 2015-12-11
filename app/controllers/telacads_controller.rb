class TelacadsController < ApplicationController
  before_action :set_telacad, only: [:show, :edit, :update, :destroy]

  # GET /telacads
  # GET /telacads.json
  def index
    @telacads = Telacad.all
  end

  # GET /telacads/1
  # GET /telacads/1.json
  def show
  end

  # GET /telacads/new
  def new
    @telacad = Telacad.new
  end

  # GET /telacads/1/edit
  def edit
  end

  # POST /telacads
  # POST /telacads.json
  def create
    @telacad = Telacad.new(telacad_params)

    respond_to do |format|
      if @telacad.save
        format.html { redirect_to @telacad, notice: 'Telacad was successfully created.' }
        format.json { render :show, status: :created, location: @telacad }
      else
        format.html { render :new }
        format.json { render json: @telacad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /telacads/1
  # PATCH/PUT /telacads/1.json
  def update
    respond_to do |format|
      if @telacad.update(telacad_params)
        format.html { redirect_to @telacad, notice: 'Telacad was successfully updated.' }
        format.json { render :show, status: :ok, location: @telacad }
      else
        format.html { render :edit }
        format.json { render json: @telacad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telacads/1
  # DELETE /telacads/1.json
  def destroy
    @telacad.destroy
    respond_to do |format|
      format.html { redirect_to telacads_url, notice: 'Telacad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_telacad
      @telacad = Telacad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def telacad_params
      params.require(:telacad).permit(:nome)
    end
end
