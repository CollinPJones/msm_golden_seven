Rails.application.routes.draw do
  #Director Routes

  #Read
  get("/directors", :controller => "directors", :action => "index")
end
