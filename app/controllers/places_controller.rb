class PlacesController < ApplicationController

  def index

    #render :inline => "Test"
    render :template => "places/index"
    
  end
end
