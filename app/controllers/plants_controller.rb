class PlantsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index
  before_action :set_plant, only: %i[show create destroy]

  def index
    @plants = Plant.all
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    if @plant.save
      redirect_to plant_path(@plant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @plant.destroy
    redirect_to plants_path, status: :see_other
  end

  def my_listings
    # @plants = Plant.all
    @my_plants = current_user.plants
  end

  private

  def set_plant
    @plant = Plant.find(params[:id])
  end

  def plant_params
    params.require(:plant).permit(:species, :photos, :price, :description)
  end
end
