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
end
