Rails.application.routes.draw do
  #First page
  get("/", :controller => "movies", :action => "index")

  #Director Routes
  #Create
  get("/directors/new_form", :controller => "directors", :action => "new_form")
  get("/create_director", :controller => "directors", :action => "create_row")

  #Read
  get("/directors", :controller => "directors", :action => "index")
  get("/directors/:id", :controller => "directors", :action => "show")


  #Movie Routes
  #Create

  #Read
  get("/movies", :controller => "movies", :action => "index")
  get("/movies/:id", :controller => "movies", :action => "show")

  #Actor Routes
  #Read
  get("/actors", :controller =>"actors", :action => "index")
  get("/actors/:id", :controller => "actors", :action => "show")

  #Role Routes
  #Read
end
