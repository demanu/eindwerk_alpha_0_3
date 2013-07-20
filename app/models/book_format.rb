class BookFormat < ActiveRecord::Base
  attr_accessible :format

  #relations
  has_many :book_editions
end
