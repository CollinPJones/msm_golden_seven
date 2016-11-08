class ActorsController < ApplicationController
  def index
    @actor = Actor.all
  end

  def show
    @actor = Actor.find_by({ :id => params[:id]})
  end

  def new_form

  end


  def create_row
    actor = Actor.new
    actor.dob = params[:dob]
    actor.name = params[:name]
    actor.bio = params[:bio]
    actor.image_url = params[:image_url]
    actor.save

    redirect_to("/actors/#{actor.id}")
  end

  def edit
    @actor = Actor.find_by({ :id => params[:id]})
  end

  def update_row
    actor = Actor.find_by({ :id => params[:id]})
    actor.dob = params[:dob]
    actor.name = params[:name]
    actor.bio = params[:bio]
    actor.image_url = params[:image_url]
    actor.save

    redirect_to("/actors/#{actor.id}")
  end

  def delete_row
    @actor = Actor.find_by({ :id => params[:id]})
    @actor.destroy
  end
end
