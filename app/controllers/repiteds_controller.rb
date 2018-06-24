class RepitedsController < ApplicationController
  before_action :set_repited, only: [:show, :edit, :update, :destroy]

  # GET /repiteds
  # GET /repiteds.json
  def index
    @repiteds = Repited.all
  end

  # GET /repiteds/1
  # GET /repiteds/1.json
  def show
  end

  # GET /repiteds/new
  def new
    @repited = Repited.new
  end

  # GET /repiteds/1/edit
  def edit
  end

  # POST /repiteds
  # POST /repiteds.json
  def create
    repited_params[:number].split(",").each do |number|
      repited = Repited.new
      repited.number = number.to_i
      repited.save
    end

    respond_to do |format|
      format.html { redirect_to repiteds_url, notice: 'Repited was successfully created.' }
      format.json { render :show, status: :created, location: @repited }
    end
  end

  # PATCH/PUT /repiteds/1
  # PATCH/PUT /repiteds/1.json
  def update
    respond_to do |format|
      if @repited.update(repited_params)
        format.html { redirect_to @repited, notice: 'Repited was successfully updated.' }
        format.json { render :show, status: :ok, location: @repited }
      else
        format.html { render :edit }
        format.json { render json: @repited.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repiteds/1
  # DELETE /repiteds/1.json
  def destroy
    @repited.destroy
    respond_to do |format|
      format.html { redirect_to repiteds_url, notice: 'Repited was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def destroy_all
    Repited.destroy_all
    respond_to do |format|
      format.html { redirect_to repiteds_url, notice: 'Repited was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repited
      @repited = Repited.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repited_params
      params.require(:repited).permit(:number)
    end
end
