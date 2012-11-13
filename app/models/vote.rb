class Vote < ActiveRecord::Base
  attr_accessible :link_id, :user_id

  belongs_to :user
  belongs_to :link

  def self.by_link(link)
    where(:link_id => link)
  end
end
