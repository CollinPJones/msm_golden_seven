Rails.application.routes.draw do
  #First page
  get("/", :controller => "movies", :action => "index")

  #Director Routes
  #Read
  get("/directors", :controller => "directors", :action => "index")


  #Movie Routes
  #Read
  get("/movies", :controller => "movies", :action => "index")


  #Actor Routes
  #Read
  get("/actors", :controller =>"actors", :action => "index")

  #Role Routes
  #Read
end
