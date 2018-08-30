class PracticesController < ApplicationController
  before_action :set_practice, only: [:show, :edit, :update, :destroy]

  # GET /practices
  # GET /practices.json
  def index
    @practices = Practice.all.order("created_at DESC").limit(3)
  end

  def practice_list

    @allpractices = Practice.count
    @num_pages = @allpractices/6.0
    @mod_pages = @num_pages % 1.0
    @mod_pages = 1.0 - @mod_pages
      if @mod_pages != 0
         @num_pages = @num_pages + @mod_pages
       else
        @num_pages = @num_pages
      end
    @page = params['page'].to_i
    @next_page = @page + 1 unless Practice.count < 6
    @prev_page = @page - 1 unless @page == 0
    @practices = Practice.all.order("created_at DESC").limit(6).offset(@page*6)
  end

  # GET /practices/1
  # GET /practices/1.json
  def show
  end

  def search
    if params[:search].blank?
      @practices = Practice.all.order("created_at DESC").limit(20)
    else
      @practices = Practice.search(params)
    end      
  end 

  # GET /practices/new
  def new
    @practice = Practice.new
  end

  # GET /practices/1/edit
  def edit
  end

  # POST /practices
  # POST /practices.json
  def create
    @practice = Practice.new(practice_params)

    respond_to do |format|
      if @practice.save
        format.html { redirect_to @practice, notice: 'Practice was successfully created.' }
        format.json { render :show, status: :created, location: @practice }
      else
        format.html { render :new }
        format.json { render json: @practice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /practices/1
  # PATCH/PUT /practices/1.json
  def update
    respond_to do |format|
      if @practice.update(practice_params)
        format.html { redirect_to @practice, notice: 'Practice was successfully updated.' }
        format.json { render :show, status: :ok, location: @practice }
      else
        format.html { render :edit }
        format.json { render json: @practice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /practices/1
  # DELETE /practices/1.json
  def destroy
    @practice.destroy
    respond_to do |format|
      format.html { redirect_to practices_url, notice: 'Practice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_practice
      @practice = Practice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def practice_params
      params.require(:practice).permit(:title, :subtitle, :boxtitle, :boxinfo, :banner, :picone, :pictwo, :video, :audio)
    end
end
