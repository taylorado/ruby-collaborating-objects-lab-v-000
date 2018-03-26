class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def self.new_by_filename(filename)
    new_song = Song.new(filename.split(/\W/)[0])
    new_song.artist_name=(filename.split(/\W/)[1])

  end

  def artist_name=(artist_name)
    Artist.find_or_create_by_name(artist_name)
  end


end
