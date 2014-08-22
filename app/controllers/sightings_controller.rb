class SightingsController < ApplicationController

  def index
    @sightings = Sighting.all
    render('sightings/show.html.erb')
  end

  def show
    @sighting = Sighting.find(params[:id])
    render('sightings/show.html.erb')
  end

  def new
    @sighting = Sighting.new
    render('sightings/new.html.erb')
  end

  def create
    @species_id = params[:id]
    @sighting = Sighting.new(:species_id => @species_id,
                             :date => params[:date],
                             :latitude => params[:latitude],
                             :longitude => params[:longitude])

    if @sighting.save
      render('sightings/success.html.erb')
    else
      render('sightings/new.html.erb')
    end
  end

  def edit
    @sighting = Sighting.find(params[:id])
    render('sightings/edit.html.erb')
  end

  def update
    @sighting = Sighting.find(params[:id])
    if @sighting.update(:date => params[:date],
                        :latitude => params[:latitude],
                        :longitude => params[:longitude])
      render('sightings/success.html.erb')
    else
      render('sightings/edit.html.erb')
    end
  end

  def destroy
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    render('sightings/destroy.html.erb')
  end
end
