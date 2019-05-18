class MactansController < ApplicationController
  before_action :set_mactan, only: [:show, :edit, :update, :destroy]

  # GET /mactans
  # GET /mactans.json
  def index
    @mactans = Mactan.all
    @blogs = Blog.all
    @cities = City.all
  end

  # GET /mactans/1
  # GET /mactans/1.json
  def show
  end

  # GET /mactans/new
  def new
    @mactan = Mactan.new
  end

  # GET /mactans/1/edit
  def edit
  end

  # POST /mactans
  # POST /mactans.json
  def create
    @mactan = Mactan.new(mactan_params)

    respond_to do |format|
      if @mactan.save
        format.html { redirect_to @mactan, notice: 'Mactan was successfully created.' }
        format.json { render :show, status: :created, location: @mactan }
      else
        format.html { render :new }
        format.json { render json: @mactan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mactans/1
  # PATCH/PUT /mactans/1.json
  def update
    respond_to do |format|
      if @mactan.update(mactan_params)
        format.html { redirect_to @mactan, notice: 'Mactan was successfully updated.' }
        format.json { render :show, status: :ok, location: @mactan }
      else
        format.html { render :edit }
        format.json { render json: @mactan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mactans/1
  # DELETE /mactans/1.json
  def destroy
    @mactan.destroy
    respond_to do |format|
      format.html { redirect_to mactans_url, notice: 'Mactan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mactan
      @mactan = Mactan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mactan_params
      params.require(:mactan).permit(:hotel_name_ja, :hotel_name_en, :hotel_lank, :hotel_area, :hotel_image, :hotel_image_text)
    end
end
