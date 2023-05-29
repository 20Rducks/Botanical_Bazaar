class PlantsController < ApplicationController
  # skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @plants = Plant.all
  end

  def show
    @plants = Plant.find(params[:id])
  end
end
