class EventsController < ApplicationController

  def index
    if params[:filter] == 'tuesday'
      @events = Event.all.where(date: "12/08/2015").order('start ASC')
        if params[:filter] == 'track 1'
          @events = Event.all.where(track: "Track 1 - Pattern Recognition").order('start ASC')
        elsif params[:filter] == 'track 2'
          @events = Event.all.where(track: "Track 2").order('start ASC')
        elsif params[:filter] == 'track 3'
          @events = Event.all.where(track: "Track 3").order('start ASC')
        elsif params[:filter] == 'track 4'
          @events = Event.all.where(track: "Track 4").order('start ASC')
        elsif params[:filter] == 'track 5'
          @events = Event.all.where(track: "Track 5").order('start ASC')
        end

    elsif params[:filter] == 'wednesday'
      @events = Event.all.where(date:"12/09/2015").order('start ASC')
    else
      @events = Event.all.order('date ASC')
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params.require(:event).permit(:date, :start, :end, :name, :track))
    @event.save
    redirect_to events_path
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(params.require(:event).permit(:date, :start, :end, :name, :track))
    redirect_to events_path
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

end
