class SessionsController < ApplicationController

  def index
    @sessions = Session.all
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.new(params.require(:session).permit(:session))
    @session.save
    redirect_to sessions_path
  end

  def show
    @session = Session.find(params[:id])
  end

  def edit
    @session = Session.find(params[:id])
  end

  def update
    @session = Session.find(params[:id])
    @session.update(params.require(:session).permit(:session))
    redirect_to sessions_path
  end

  def destroy
    @session = Session.find(params[:id])
    @session.destroy
    redirect_to sessions_path
  end

end
