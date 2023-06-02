class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home

  def home
    @plants = Plant.all.sort_by { |plant| plant.created_at  }.reverse
  end
end
