class ForumsController < ApplicationController
  def index
    @forums = Forum.all
  end

  def show
    @forum = Forum.find(params[:id])
  end

  def new
    @forum = Forum.new
  end

  def create
    @forum = Forum.new(forum_params)

    if @forum.save
      flash[:success] = "Forum created!"
      redirect_to @forum
    else
      render 'new'
    end
  end

  def edit
    @forum = Forum.find(params[:id])
  end

  def update
    @forum = Forum.find(params[:id])

    if @forum.update_attributes(forum_params)
      flash[:success] = "Forum updated!"
      redirect_to @forum
    else
      render 'edit'
    end
  end

  private

  def forum_params
    params.require(:forum).permit(:title, :desc)
  end
end
