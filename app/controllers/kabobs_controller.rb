class KabobsController < ApplicationController
  before_action :set_kabob, only: [:show, :edit, :update, :destroy]
def home
end
  # GET /kabobs
  # GET /kabobs.json
  def index
    @kabobs = Kabob.all
  end

  # GET /kabobs/1
  # GET /kabobs/1.json
  def show
  end

  # GET /kabobs/new
  def new
    @kabob = Kabob.new
  end

  # GET /kabobs/1/edit
  def edit
  end

  # POST /kabobs
  # POST /kabobs.json
  def create
    @kabob = Kabob.new(kabob_params)

    respond_to do |format|
      if @kabob.save
        format.html { redirect_to @kabob, notice: 'Kabob was successfully created.' }
        format.json { render :show, status: :created, location: @kabob }
      else
        format.html { render :new }
        format.json { render json: @kabob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kabobs/1
  # PATCH/PUT /kabobs/1.json
  def update
    respond_to do |format|
      if @kabob.update(kabob_params)
        format.html { redirect_to @kabob, notice: 'Kabob was successfully updated.' }
        format.json { render :show, status: :ok, location: @kabob }
      else
        format.html { render :edit }
        format.json { render json: @kabob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kabobs/1
  # DELETE /kabobs/1.json
  def destroy
    @kabob.destroy
    respond_to do |format|
      format.html { redirect_to kabobs_url, notice: 'Kabob was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kabob
      @kabob = Kabob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kabob_params
      params.require(:kabob).permit(:name, :sides, :cost, :image)
    end
end
