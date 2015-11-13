class PinsController < ApplicationController

  def index
    @board = Board.find(params[:board_id])
    @pins = Pin.all.where(board_id:@board.id)
  end

  def show
    @pin=Pin.find(params[:id])
    @board = Board.find(params[:board_id])
  end

  def new
    @pin=Pin.new
  end

  def edit
    @pin=Pin.find(params[:id])
    @board = Board.find(params[:board_id])
  end

  def create
    @board = Board.find(params[:board_id])
    @pin = @board.pins.new(pin_params)
    binding.pry

    if @pin.save
      redirect_to board_pin_path(@board.id,@pin)
    else
      render 'new'
    end

  end

  def update
    @board = Board.find(params[:board_id])
    @pin = Pin.find(params[:id])

    if @pin.update(pin_params)
      redirect_to board_pin_path
    else
      render 'edit'
    end

  end

  def destroy
    @pin = Pin.find(params[:id])
    @pin.destroy
    redirect_to board_pins_path
  end

  private
    def pin_params
      params.require(:pin).permit(:title, :img_url)
    end

end
