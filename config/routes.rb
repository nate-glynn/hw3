Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
  
  #verify if you need this code
  root "places#index"

  #Entries will belog to a place, therefore are nested under places. 
  resources "places" do
    resources "entries"
  end
  
end
