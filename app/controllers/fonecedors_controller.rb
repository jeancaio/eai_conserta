class FonecedorsController < ApplicationController
  before_action :set_fonecedor, only: [:show, :edit, :update, :destroy]

  # GET /fonecedors
  # GET /fonecedors.json
  def index
    @fonecedors = Fonecedor.all
  end

  # GET /fonecedors/1
  # GET /fonecedors/1.json
  def show
  end

  # GET /fonecedors/new
  def new
    @fonecedor = Fonecedor.new
  end

  # GET /fonecedors/1/edit
  def edit
  end

  # POST /fonecedors
  # POST /fonecedors.json
  def create
    @fonecedor = Fonecedor.new(fonecedor_params)

    respond_to do |format|
      if @fonecedor.save
        format.html { redirect_to @fonecedor, notice: 'Fonecedor was successfully created.' }
        format.json { render :show, status: :created, location: @fonecedor }
      else
        format.html { render :new }
        format.json { render json: @fonecedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fonecedors/1
  # PATCH/PUT /fonecedors/1.json
  def update
    respond_to do |format|
      if @fonecedor.update(fonecedor_params)
        format.html { redirect_to @fonecedor, notice: 'Fonecedor was successfully updated.' }
        format.json { render :show, status: :ok, location: @fonecedor }
      else
        format.html { render :edit }
        format.json { render json: @fonecedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fonecedors/1
  # DELETE /fonecedors/1.json
  def destroy
    @fonecedor.destroy
    respond_to do |format|
      format.html { redirect_to fonecedors_url, notice: 'Fonecedor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fonecedor
      @fonecedor = Fonecedor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fonecedor_params
      params.require(:fonecedor).permit(:nome, :tipo_servico, :endereco, :descricao)
    end
end
