class Link < ActiveRecord::Base
  attr_accessible :title, :url
  validates_uniqueness_of :url
end
