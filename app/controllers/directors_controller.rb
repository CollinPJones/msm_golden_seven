class DirectorsController < ApplicationController
  def index
    @director = Director.all
  end

  def show
    #Parameters: {"id"=>"1"}
    @director = Director.find_by({:id => params[:id]})
  end

  def new_form

  end

  def create_row
    @director = Director.new
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]
    @director.save
    redirect_to("/directors/#{@director.id}")
  end

  def edit
    @director = Director.find_by({:id => params[:id]})
  end

  def update_row
    @director = Director.find_by({:id => params[:id]})
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]
    @director.save
    redirect_to("/directors/#{@director.id}")
  end

  def delete_row
    @director = Director.find_by({:id => params[:id]})
    @director.destroy
    redirect_to("/directors")
  end

end
