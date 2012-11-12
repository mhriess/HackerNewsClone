class Link < ActiveRecord::Base
  attr_accessible :title, :url
  validates_uniqueness_of :url
  belongs_to :user
  has_many :comments
end
