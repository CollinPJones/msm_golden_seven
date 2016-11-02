class DirectorsController < ApplicationController
  def index
    @director = Director.all
  end
  def show

  end
end
