class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(params[:link])
    if @link.save
      redirect_to links_path
      flash[:notice] = "Successfully submitted #{@link.title}"
    else
      flash[:notice] = "This link has already been submitted"
      render 'new'
    end
  end
end
