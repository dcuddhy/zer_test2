class EventsController < ApplicationController

  def index
      @movies = Movie.all
  end

  def new
          @movie = Movie.new
   end

end
