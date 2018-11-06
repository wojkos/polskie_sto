class PlacesController < ApplicationController
  before_action :set_place, only: %i[show edit update destroy]

  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)

    respond_to do |format|
      if @place.save
        format.html do 
          redirect_to places_path, notice: 'Place was successfully created.'
        end
      else
        format.html { render :new }
      end
    end
  end

  def show; end

  def update
    respond_to do |format|
      if @place.update(place_params)
        format.html do 
          redirect_to places_path, notice: 'Record was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @place }
      else
        format.html { render :edit }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @place.destroy
    respond_to do |format|
      format.html do
        redirect_to places_path, notice: 'Item was successfully destroyed.'
      end
    end
  end

  private

  def set_place
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:title,
                                  :description,
                                  :location)
  end
end
