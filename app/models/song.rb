class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name

  def drake_made_this
    drake.songs << self
  end
end
