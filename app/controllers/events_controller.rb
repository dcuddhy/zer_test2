class EventsController < ApplicationController

  def index
    @events = Event.all.order('date DSC')

    if params[:filter] == 'tuesday'
      @events = Event.all.where(date: "12/08/2015").order('start ASC')
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
