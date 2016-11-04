Rails.application.routes.draw do
  #Director Routes
  #Read
  get("/directors", :controller => "directors", :action => "index")


  #Movie Routes
  #Read
get("/movies", :controller => "movies", :action => "index")


  #Actor Routes
  #Read


  #Role Routes
  #Read
end
