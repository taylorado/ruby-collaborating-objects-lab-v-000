## class MP3Importer
##  def import(list_of_filenames)
##    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
##  end
## end


class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    files.each{|f| Song.new_by_filename(f)}
  end
end
