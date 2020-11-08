class SightingsController < ApplicationController

  def show
    sighting = Sighting.find_by(id: params[:id])
    if sighting
      render json = sightings, include: [:bird, :location]
      #can use code below to show implied .to_json method in rails
      #render json: sighting.to_json(include: [:bird, :location])
    else
      
  end

end
