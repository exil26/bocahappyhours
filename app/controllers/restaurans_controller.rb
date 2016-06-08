class RestauransController < ApplicationController
  before_action :set_restauran, only: [:show, :edit, :update, :destroy]

  # GET /restaurans
  # GET /restaurans.json
  def index
    @restaurans = Restauran.all
  end

  # GET /restaurans/1
  # GET /restaurans/1.json
  def show
  end

  # GET /restaurans/new
  def new
    @restauran = Restauran.new
  end

  # GET /restaurans/1/edit
  def edit
  end

  # POST /restaurans
  # POST /restaurans.json
  def create
    @restauran = Restauran.new(restauran_params)

    respond_to do |format|
      if @restauran.save
        format.html { redirect_to @restauran, notice: 'Restauran was successfully created.' }
        format.json { render :show, status: :created, location: @restauran }
      else
        format.html { render :new }
        format.json { render json: @restauran.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurans/1
  # PATCH/PUT /restaurans/1.json
  def update
    respond_to do |format|
      if @restauran.update(restauran_params)
        format.html { redirect_to @restauran, notice: 'Restauran was successfully updated.' }
        format.json { render :show, status: :ok, location: @restauran }
      else
        format.html { render :edit }
        format.json { render json: @restauran.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurans/1
  # DELETE /restaurans/1.json
  def destroy
    @restauran.destroy
    respond_to do |format|
      format.html { redirect_to restaurans_url, notice: 'Restauran was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restauran
      @restauran = Restauran.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restauran_params
      params.require(:restauran).permit(:name, :address, :phone, :website)
    end
end
