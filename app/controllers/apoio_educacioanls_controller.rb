class ApoioEducacioanlsController < ApplicationController
  before_action :set_apoio_educacioanl, only: [:show, :edit, :update, :destroy]

  # GET /apoio_educacioanls
  # GET /apoio_educacioanls.json
  def index
    @apoio_educacioanls = ApoioEducacioanl.all
  end

  # GET /apoio_educacioanls/1
  # GET /apoio_educacioanls/1.json
  def show
  end

  # GET /apoio_educacioanls/new
  def new
    @apoio_educacioanl = ApoioEducacioanl.new
  end

  # GET /apoio_educacioanls/1/edit
  def edit
  end

  # POST /apoio_educacioanls
  # POST /apoio_educacioanls.json
  def create
    @apoio_educacioanl = ApoioEducacioanl.new(apoio_educacioanl_params)

    respond_to do |format|
      if @apoio_educacioanl.save
        format.html { redirect_to @apoio_educacioanl, notice: 'Apoio educacioanal foi cadastrado com Sucesso !' }
        format.json { render :show, status: :created, location: @apoio_educacioanl }
      else
        format.html { render :new }
        format.json { render json: @apoio_educacioanl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apoio_educacioanls/1
  # PATCH/PUT /apoio_educacioanls/1.json
  def update
    respond_to do |format|
      if @apoio_educacioanl.update(apoio_educacioanl_params)
        format.html { redirect_to @apoio_educacioanl, notice: 'Apoio educacioanal foi atualizado com Sucesso !' }
        format.json { render :show, status: :ok, location: @apoio_educacioanl }
      else
        format.html { render :edit }
        format.json { render json: @apoio_educacioanl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apoio_educacioanls/1
  # DELETE /apoio_educacioanls/1.json
  def destroy
    @apoio_educacioanl.destroy
    respond_to do |format|
      format.html { redirect_to apoio_educacioanls_url, notice: 'Apoio educacioanal foi excluído com Sucesso !' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apoio_educacioanl
      @apoio_educacioanl = ApoioEducacioanl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apoio_educacioanl_params
      params.require(:apoio_educacioanl).permit(:nome, :email, :senha, :confirmar_senha)
    end
end
