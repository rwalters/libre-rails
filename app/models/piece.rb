class Piece < ActiveRecord::Base
  paginates_per 5
  validates_presence_of :title, :body
end
