class JtablesController < ApplicationController

  before_action do
    @event = Event.find(params[:event_id])
  end

  def index
    @jtable = Jtable.all
  end

  def new
    @jtable = @event.jtables.new
  end

  def create
    if params[:event_session] != ""
      session = Session.all.find_by_session(params[:event_session]) || Session.create(session: params[:event_session])
      Jtable.create(event_id: @event.id, session_id: session.id)
      redirect_to new_event_jtable_path, notice: 'Session was successfully created.'
    else
      redirect_to new_event_jtable_path, notice: 'Session failed to be created.'
    end
  end

end
