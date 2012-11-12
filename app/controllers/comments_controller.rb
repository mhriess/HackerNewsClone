class CommentsController < ApplicationController
  def create
    @link = Link.find(params[:link_id])
    @comment = @link.comments.build(params[:comment])
    #@comment.user_id = current_user.id
    @comment.user_id = current_user.id if current_user
    if @comment.save
      flash[:notice] = "Successfully submitted #{@link.title}"
      redirect_to @link
    else
      render 'links/show'
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])

    if @comment.update_attributes(params[:comment])
      redirect_to link_path(@comment.link)
      flash[:notice] = "Successfully edited your comment."
    end
  end
end
