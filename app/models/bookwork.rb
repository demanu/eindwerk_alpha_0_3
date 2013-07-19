class Bookwork < ActiveRecord::Base
  attr_accessible :title

  #relations
  has_many :loans
  has_many :users, :through => :loans
end
