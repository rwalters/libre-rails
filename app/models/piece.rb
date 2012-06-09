class Piece < ActiveRecord::Base
  is_rateable
  is_favoriteable
  is_commentable

  belongs_to :user

  paginates_per 5
  validates_presence_of :title, :body
end
