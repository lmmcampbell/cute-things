class CutiesController < ApplicationController
  before_action :set_cuty, only: %i[ show edit update destroy ]

  # GET /cuties or /cuties.json
  def index
    @cuties = Cuty.all
  end

  # GET /cuties/1 or /cuties/1.json
  def show
  end

  # GET /cuties/new
  def new
    @cuty = Cuty.new
  end

  # GET /cuties/1/edit
  def edit
  end

  # POST /cuties or /cuties.json
  def create
    @cuty = Cuty.new(cuty_params)

    respond_to do |format|
      if @cuty.save
        format.html { redirect_to @cuty, notice: "Cuty was successfully created." }
        format.json { render :show, status: :created, location: @cuty }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cuty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuties/1 or /cuties/1.json
  def update
    respond_to do |format|
      if @cuty.update(cuty_params)
        format.html { redirect_to @cuty, notice: "Cuty was successfully updated." }
        format.json { render :show, status: :ok, location: @cuty }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cuty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuties/1 or /cuties/1.json
  def destroy
    @cuty.destroy
    respond_to do |format|
      format.html { redirect_to cuties_url, notice: "Cuty was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuty
      @cuty = Cuty.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cuty_params
      params.require(:cuty).permit(:name, :description, :image)
    end
end
