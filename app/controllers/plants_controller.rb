class PlantsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index
  before_action :set_plant, only: %i[show destroy]

  # def index
  #   if params[:query].present?
  #     @plants = Plant.search_by_description_and_price(params[:query])
  #     @plants = Plant.search_by_species_and_description(params[:query])
  #     @plants = Plant.search_by_species_and_price(params[:query])
  #     Plant.where(price: params[:query])
  #     Plant.where(description: params[:query])
  #     Plant.where(species: params[:query])
  #   else
  #     @plants = Plant.all
  #     @plant = Plant.new
  #   end
  # end

  def index
    search_query = params[:query]
    if search_query.present?
      sql_query = "species ILIKE :query OR description ILIKE :query"
      @plants = Plant.where(sql_query, query: "%#{params[:query]}%")
      # @plants = Plant.where("price LIKE ? OR species LIKE ? OR description LIKE ?","%#{search_query}.to_s","%#{search_query}%","%#{search_query}%")
    else
      @plants = Plant.all
    end
    @plants = @plants.sort_by(&:created_at)
    @plant = Plant.new
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user = current_user
    if @plant.save
      redirect_to plant_path(@plant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @plant.destroy
    redirect_to my_listings_plants_path, status: :see_other
  end

  def my_listings
    @my_plants = current_user.plants
  end

  private

  def set_plant
    @plant = Plant.find(params[:id])
  end

  def plant_params
    params.require(:plant).permit(:species, :price, :description, photos: [])
  end

end
