class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(params[:link])
    @link.user_id = current_user.id
    if @link.save
      redirect_to links_path
      flash[:notice] = "Successfully submitted #{@link.title}"
    else
      flash[:notice] = "This link has already been submitted"
      render 'new'
    end
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])
    if @link.update_attributes(params[:link])
      redirect_to links_path
      flash[:notice] = "Successfully edited #{@link.title}"
    else
      flash[:notice] = "This link has already been submitted"
      render 'edit'
    end
  end
end
