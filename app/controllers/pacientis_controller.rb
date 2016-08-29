class PacientisController < ApplicationController
  before_action :set_pacienti, only: [:show, :edit, :update, :destroy]

  # GET /pacientis
  # GET /pacientis.json
  def index
    @pacientis = Pacienti.all
  end

  # GET /pacientis/1
  # GET /pacientis/1.json
  def show
  end

  # GET /pacientis/new
  def new
    @pacienti = Pacienti.new
  end

  # GET /pacientis/1/edit
  def edit
  end

  # POST /pacientis
  # POST /pacientis.json
  def create
    @pacienti = Pacienti.new(pacienti_params)

    respond_to do |format|
      if @pacienti.save
        format.html { redirect_to @pacienti, notice: 'Pacienti was successfully created.' }
        format.json { render :show, status: :created, location: @pacienti }
      else
        format.html { render :new }
        format.json { render json: @pacienti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pacientis/1
  # PATCH/PUT /pacientis/1.json
  def update
    respond_to do |format|
      if @pacienti.update(pacienti_params)
        format.html { redirect_to @pacienti, notice: 'Pacienti was successfully updated.' }
        format.json { render :show, status: :ok, location: @pacienti }
      else
        format.html { render :edit }
        format.json { render json: @pacienti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacientis/1
  # DELETE /pacientis/1.json
  def destroy
    @pacienti.destroy
    respond_to do |format|
      format.html { redirect_to pacientis_url, notice: 'Pacienti was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pacienti
      @pacienti = Pacienti.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pacienti_params
      params.require(:pacienti).permit(:nume, :prenume, :varsta, :stare)
    end
end
