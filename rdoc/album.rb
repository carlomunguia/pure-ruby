#An Album class that stores an Array of Songs
class Album
  include Enumerable

  #An Array Object of Songs. Each song is a String
  attr_reader :songs

  #Create a new album instance with an Empty Song Array!
  def initialize
    @songs = []
  end

  #Add a song to the Album object's song array
  def add_song(song)
    songs << song
  end

  #Yield each song in the Album to a block
  def each
    songs.each do |song|
      yield song
    end
  end
end

thriller = Album.new
thriller.add_song("Billie Jean")
puts thriller.songs


