class CongoersController < ApplicationController
  before_action :set_congoer, only: [:show, :edit, :update, :destroy]

  # GET /congoers
  # GET /congoers.json
  def index
    @congoers = Congoer.all
  end

  # GET /congoers/1
  # GET /congoers/1.json
  def show
  end

  # GET /congoers/new
  def new
    @congoer = Congoer.new
  end

  # GET /congoers/1/edit
  def edit
  end

  # POST /congoers
  # POST /congoers.json
  def create
    @congoer = Congoer.new(congoer_params)

    respond_to do |format|
      if @congoer.save
        format.html { redirect_to @congoer, notice: 'Congoer was successfully created.' }
        format.json { render :show, status: :created, location: @congoer }
      else
        format.html { render :new }
        format.json { render json: @congoer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /congoers/1
  # PATCH/PUT /congoers/1.json
  def update
    respond_to do |format|
      if @congoer.update(congoer_params)
        format.html { redirect_to @congoer, notice: 'Congoer was successfully updated.' }
        format.json { render :show, status: :ok, location: @congoer }
      else
        format.html { render :edit }
        format.json { render json: @congoer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /congoers/1
  # DELETE /congoers/1.json
  def destroy
    @congoer.destroy
    respond_to do |format|
      format.html { redirect_to congoers_url, notice: 'Congoer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_congoer
      @congoer = Congoer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def congoer_params
      params.require(:congoer).permit(:description)
    end
end
