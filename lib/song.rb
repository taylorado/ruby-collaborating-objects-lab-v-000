class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def self.new_by_filename(filename)
    
    @name = filename.split(" - ")[1]
    @artist = filename.split(" - ")[2]
    
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end


end
