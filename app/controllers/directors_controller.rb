class DirectorsController < ApplicationController
  def index
    @director = Director.all
  end

  def show
    #Parameters: {"id"=>"1"}
    @director = Director.find_by({:id => params[:id]})
  end
end
