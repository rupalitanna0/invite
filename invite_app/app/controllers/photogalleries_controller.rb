class PhotogalleriesController < ApplicationController
  before_action :set_photogallery, only: [:show, :edit, :update, :destroy]
  attr_accessor :photogalleries 

  # GET /photogalleries
  # GET /photogalleries.json
  

  def index
    @photoGalls = []
    @photogalleries = Photogallery.all
    @photogalleries.each_with_index do |gallery, i|
      updated_gallery = JSON.parse(gallery.to_json)
      event = JSON.parse(gallery.event.to_json)
      updated_gallery['event'] = event
      @photoGalls.push(updated_gallery)
    end

    respond_to do |format|
      
        format.html { render :index }
        format.json {render json: @photoGalls}
      end
  end

  # GET /photogalleries/1
  # GET /photogalleries/1.json
  def show

  end

  # GET /photogalleries/new
  def new
    @photogallery = Photogallery.new
  end

  # GET /photogalleries/1/edit
  def edit
  end

  # POST /photogalleries
  # POST /photogalleries.json
  def create
    @photogallery = Photogallery.new(photogallery_params)

    respond_to do |format|
      if @photogallery.save
        format.html { redirect_to @photogallery, notice: 'Photogallery was successfully created.' }
        format.json { render :show, status: :created, location: @photogallery }
      else
        format.html { render :new }
        format.json { render json: @photogallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photogalleries/1
  # PATCH/PUT /photogalleries/1.json
  def update
    respond_to do |format|
      if @photogallery.update(photogallery_params)
        format.html { redirect_to @photogallery, notice: 'Photogallery was successfully updated.' }
        format.json { render :show, status: :ok, location: @photogallery }
      else
        format.html { render :edit }
        format.json { render json: @photogallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photogalleries/1
  # DELETE /photogalleries/1.json
  def destroy
    @photogallery.destroy
    respond_to do |format|
      format.html { redirect_to photogalleries_url, notice: 'Photogallery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photogallery
      @photogallery = Photogallery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photogallery_params
      params.require(:photogallery).permit(:topic, :pics, :details)
    end
end
