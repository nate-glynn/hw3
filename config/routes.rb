Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })

  resources "places"
  resources "entries"
  
  #get("/places", {:controller => "places", :action => "index"})
  #get("/newentry", {:controller => "newentry", :action => "index"})
  #get("/entries", {:controller => "entries", :action => "index"})

end
