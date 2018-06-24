class NeededsController < ApplicationController
  before_action :set_needed, only: [:show, :edit, :update, :destroy]

  # GET /neededs
  # GET /neededs.json
  def index
    @neededs = Needed.all
  end

  # GET /neededs/1
  # GET /neededs/1.json
  def show
  end

  # GET /neededs/new
  def new
    @needed = Needed.new
  end

  # GET /neededs/1/edit
  def edit
  end

  # POST /neededs
  # POST /neededs.json
  def create
    needed_params[:number].split(",").each do |number|
      repited = Needed.new
      repited.number = number.to_i
      repited.save
    end

    respond_to do |format|
      format.html { redirect_to neededs_url, notice: 'Needed was successfully created.' }
      format.json { render :show, status: :created, location: @needed }
    end
  end

  # PATCH/PUT /neededs/1
  # PATCH/PUT /neededs/1.json
  def update
    respond_to do |format|
      if @needed.update(needed_params)
        format.html { redirect_to @needed, notice: 'Needed was successfully updated.' }
        format.json { render :show, status: :ok, location: @needed }
      else
        format.html { render :edit }
        format.json { render json: @needed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /neededs/1
  # DELETE /neededs/1.json
  def destroy
    @needed.destroy
    respond_to do |format|
      format.html { redirect_to neededs_url, notice: 'Needed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def destroy_all
    Needed.destroy_all
    respond_to do |format|
      format.html { redirect_to neededs_url, notice: 'Needed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_needed
      @needed = Needed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def needed_params
      params.require(:needed).permit(:number)
    end
end
