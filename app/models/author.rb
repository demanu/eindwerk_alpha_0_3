class Author < ActiveRecord::Base
  attr_accessible :name

  #relations
  has_many :participants
  has_many :author_roles, through: => :participants
end
