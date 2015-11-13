class PinsController < ApplicationController

  def index
    @pins=Pin.all
  end

  def show
    @pin=Pin.find(params[:id])
  end

  def new
    @pin=Pin.new
  end

  def edit
    @pin=Pin.find(params[:id])
  end

  def create
    
  end

  def update

  end

  def destroy

  end

end
