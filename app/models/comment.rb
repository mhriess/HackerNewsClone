class Comment < ActiveRecord::Base
  attr_accessible :comment_text, :link_id, :user_id
  belongs_to :link
  belongs_to :user
  validates :user_id,
    :presence => { :message => "You must be signed in to comment." }

  def can_edit?
    Time.now - 15.minutes < created_at
  end 
end
