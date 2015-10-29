class DesertsController < ApplicationController
  before_action :set_desert, only: [:show, :edit, :update, :destroy]

  # GET /deserts
  # GET /deserts.json
  def index
    @deserts = Desert.all
  end

  # GET /deserts/1
  # GET /deserts/1.json
  def show
  end

  # GET /deserts/new
  def new
    @desert = Desert.new
  end

  # GET /deserts/1/edit
  def edit
  end

  # POST /deserts
  # POST /deserts.json
  def create
    @desert = Desert.new(desert_params)

    respond_to do |format|
      if @desert.save
        format.html { redirect_to @desert, notice: 'Desert was successfully created.' }
        format.json { render :show, status: :created, location: @desert }
      else
        format.html { render :new }
        format.json { render json: @desert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deserts/1
  # PATCH/PUT /deserts/1.json
  def update
    respond_to do |format|
      if @desert.update(desert_params)
        format.html { redirect_to @desert, notice: 'Desert was successfully updated.' }
        format.json { render :show, status: :ok, location: @desert }
      else
        format.html { render :edit }
        format.json { render json: @desert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deserts/1
  # DELETE /deserts/1.json
  def destroy
    @desert.destroy
    respond_to do |format|
      format.html { redirect_to deserts_url, notice: 'Desert was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desert
      @desert = Desert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def desert_params
      params.require(:desert).permit(:name, :cost, :image)
    end
end
