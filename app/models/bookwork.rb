class Bookwork < ActiveRecord::Base
  attr_accessible :title, :library_id

  #relations
  has_many :loans
  has_many :users, :through => :loans
  belongs_to :library
end
