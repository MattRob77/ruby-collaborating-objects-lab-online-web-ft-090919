class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end

  def files
    files = Dir["#{path}/*.mp3"].collect {|file| file.split("/").last}
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end

end