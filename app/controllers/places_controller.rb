class PlacesController < ApplicationController

  def index

    #render :inline => "Test"
    #render :template => "places/index"
    @places = Place.all
    
  end

  def show
    #find a place
    @place = Place.find_by({"id" => params["id"]})
    #render places/show view with details about the place
  end

  def new
    #render view with new Place form
  end

  def create
    @place = Place.new
    #assign user-entered form data to Place's columns
    @place["name"] = params["name"]
    #save Company row
    @place.save
    #redirect user
    redirect_to "/places"
  end

end
