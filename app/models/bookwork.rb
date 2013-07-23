class Bookwork < ActiveRecord::Base
  attr_accessible :title, :library_id, :bookstore_id

  #relations
  has_many :loans
  has_many :users, :through => :loans
  has_many :book_editions
  has_many :participants
  has_many :author_roles, :through => :participants
  has_many :authors, :through => :participants
  belongs_to :library
  belongs_to :bookstore


end
