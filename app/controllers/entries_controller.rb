class EntriesController < ApplicationController

  def index

    #render :inline => "Test"
    #render :template => "places/index"
    @entries = Entry.all
    
  end

  def show
    #find an entry
    @entry = Entry.find_by({"id" => params["id"]})
    #render places/show view with details about the place
  end

  def new
    #render view with new Entry form
  end

  def create
    @entry = Entry.new
    #assign user-entered form data to Place's columns
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occurred_on"]
    #save Company row
    @entry.save
    #redirect user
    redirect_to "/entries"
  end

end
