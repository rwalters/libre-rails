class Piece < ActiveRecord::Base
  has_reputation
  is_social
  is_friendable

  paginates_per 5
  validates_presence_of :title, :body
end
