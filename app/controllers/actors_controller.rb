class ActorsController < ApplicationController
  def index
    @actor = Actor.all
  end

  def show
    @actor = Actor.find_by({ :id => params[:id]})
  end
end
