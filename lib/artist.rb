
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
     if @@all.include? name 
       return @@all.detect {|nam| nam == name} 
     else
        Artist.new(name)
      end
   end

   def print_songs
     @songs.each { |song| puts song.name }
   end

  def self.all
    @@all
    end

  def save
    @@all << self
  end

end
