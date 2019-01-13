class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genres.collect {|genre| genre.name}
  end

  def drake_made_this
    drake.songs << self
  end
end
