class Bookwork < ActiveRecord::Base
  attr_accessible :title, :library_id, :bookstore_id

  #relations
  has_many :loans
  has_many :users, :through => :loans
  has_many :book_editions
  belongs_to :library
end
