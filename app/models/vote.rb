class Vote < ActiveRecord::Base
  attr_accessible :link_id, :user_id

  belongs_to :user
  belongs_to :link

  def self.already_cast?(link_id, user_id)
    !Vote.find(:first, :conditions => {:link_id => link_id, :user_id => user_id}).nil?
  end
end
