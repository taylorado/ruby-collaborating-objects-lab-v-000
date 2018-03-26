
class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs(artist)
    artist.songs
  end

  def songs
    @@songs
  end

  def self.all
    @@all
    end

  def save
    @@all << self
  end

end
