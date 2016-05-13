class AttractionsController < ApplicationController

  def index
    @attractions = Attraction.all
  end

  # def new
  #   @attraction = Attraction.new
  # end

  # def create
  #   @attraction = Attraction.new(attraction_params)
  #   @attraction.save
  #   redirect_to root_path
  # end

  # private
  # def attraction_params
  #   params.require(:attraction).permit(:name, :tickets, :nausea_rating, :happiness_rating, :min_height)
  # end
end