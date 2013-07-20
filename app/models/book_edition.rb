class BookEdition < ActiveRecord::Base
  attr_accessible :bookwork_id, :book_format_id, :isbn_nr, :publisher_id

  #relations
  belongs_to :bookwork
  belongs_to :publisher
  belongs_to :book_format
end
