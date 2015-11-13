class TagsController < ApplicationController

  def index
    @tags=Tag.all
  end

  def new
    @tag=Tag.new
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def create
    @tag = Tag.new(tag_params)

    if @tag.save
      redirect_to @tag
    else
      render 'new'
    end
  end

  private
  def tag_params
    params.require(:tag).permit(:category)
  end
end
