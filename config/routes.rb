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

  #Update
  get("/directors/:id/edit", :controller => "directors", :action => "edit")
  get("/update_director/:id", :controller => "directors", :action => "update_row")

  #Delete
  get("/delete_director/:id", :controller => "directors", :action => "delete_row")

  #Movie Routes
  #Create
  get("/movies/new_form", :controller => "movies", :action => "new_form")
  get("/create_movie", :controller => "movies", :action => "create_row")

  #Read
  get("/movies", :controller => "movies", :action => "index")
  get("/movies/:id", :controller => "movies", :action => "show")

  #Update
  get("/movies/:id/edit", :controller => "movies", :action => "edit")
  get("/update_movie/:id", :controller => "movies", :action => "update_row")

  #Actor Routes
  #Create
  get("/actors/new_form", :controller => "actors", :action => "new_form")
  get("/create_actor", :controller => "actors", :action => "create_row")

  #Read
  get("/actors", :controller =>"actors", :action => "index")
  get("/actors/:id", :controller => "actors", :action => "show")

  #Update
  get("/actors/:id/edit", :controller => "actors", :action => "edit")
  get("/update_actor/:id", :controller => "actors", :action => "update_row")

  #Role Routes
  #Read
end
