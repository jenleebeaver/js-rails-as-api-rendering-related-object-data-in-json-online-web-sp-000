class SightingsController < ApplicationController

  def show
    sighting = Sighting.find_by(id: params[:id])
    if sighting
      render json = sightings, include: [:bird, :location]
  end

end
