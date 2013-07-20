class Bookstore < ActiveRecord::Base
  attr_accessible :address, :name

  #relations
  has_many :bookworks
end
