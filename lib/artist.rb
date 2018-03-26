
class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
  @songs unless @songs == nil
  end

  def add_song(some_song)
    @songs << some_song
  end

  def self.find_or_create_by_name(name)
     self.find(name) ? self.find(name) : self.create(name)
   end

   def print_songs
     puts @songs
   end

  def self.all
    @@all
    end

  def save
    @@all << self
  end

end
