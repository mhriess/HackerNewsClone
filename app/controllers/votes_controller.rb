class VotesController < ApplicationController
  def create
    @vote = Vote.new(:link_id => params[:link_id], :user_id => current_user.id)

    if @vote.save
      redirect_to '/'
    end
  end
end
