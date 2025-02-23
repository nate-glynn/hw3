class EntriesController < ApplicationController

  def index
    #render :inline => "Test"
    #render :template => "places/index"
    #test code to show all entries
    #@entries = Entry.all
   
    #Showing only the entries for a specific place
    @place = Place.find_by({"id" => params["place_id"]})
    @entries = Entry.where({"place_id" => @place.id})

  end

  def show
    #find an entry
    @entry = Entry.find_by({"id" => params["id"]})
  end

  def new
    @place = Place.find_by({"id" => params["place_id"]})
    @entry = Entry.new
  end

  def create
    @entry = Entry.new
    #assign user-entered form data to Place and Entry id data
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occurred_on"]
    #tying the entry to the specific place
    @entry["place_id"] = params["place_id"]
    #save the entry
    @entry.save
    #redirect user to the all the entries of the current place
    redirect_to "/places/#{@entry.place_id}"
  end

end
