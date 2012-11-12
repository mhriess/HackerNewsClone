class Link < ActiveRecord::Base
  attr_accessible :title, :url
  validates_uniqueness_of :url
  belongs_to :user
  # before_save :set_user_id

  # private
  #   def set_user_id
  #     user_id = current_user.id
  #   end
end
