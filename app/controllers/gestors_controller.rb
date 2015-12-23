class GestorsController < ApplicationController
  before_action :set_gestor, only: [:show, :edit, :update, :destroy]

  # GET /gestors
  # GET /gestors.json
  def index
    @gestors = Gestor.all
  end

  # GET /gestors/1
  # GET /gestors/1.json
  def show
  end

  # GET /gestors/new
  def new
    @gestor = Gestor.new
  end

  # GET /gestors/1/edit
  def edit
  end

  # POST /gestors
  # POST /gestors.json
  def create
    @gestor = Gestor.new(gestor_params)

    respond_to do |format|
      if @gestor.save
        format.html { redirect_to @gestor, notice: 'Gestor foi cadastrado com sucesso !' }
        format.json { render :show, status: :created, location: @gestor }
      else
        format.html { render :new }
        format.json { render json: @gestor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gestors/1
  # PATCH/PUT /gestors/1.json
  def update
    respond_to do |format|
      if @gestor.update(gestor_params)
        format.html { redirect_to @gestor, notice: 'Gestor foi atualizado com sucesso !' }
        format.json { render :show, status: :ok, location: @gestor }
      else
        format.html { render :edit }
        format.json { render json: @gestor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gestors/1
  # DELETE /gestors/1.json
  def destroy
    @gestor.destroy
    respond_to do |format|
      format.html { redirect_to gestors_url, notice: 'Gestor foi excluído com sucesso !' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gestor
      @gestor = Gestor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gestor_params
      params.require(:gestor).permit(:nome, :email, :senha, :confirmar_senha)
    end
end
