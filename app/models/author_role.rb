class AuthorRole < ActiveRecord::Base
  attr_accessible :role

  #relations
  has_many :participants
  has_many :authors, :through => :participants
end
