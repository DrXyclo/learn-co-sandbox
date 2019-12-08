class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
    song.artist = self 
  end
  
  def songs
    @songs
  end 
  
  def add_song_by_name(name, genre)
    song = Song.new(name, genre)
    @songs << songs
    song.artist = self 
end

class Song 
  attr_accessor :artist, :name, :genre 
  
  def initialize(name, genre)
    @name = name
    @genre = genre
  end
  
  def artist_name
    self.artist.name 
end



=begin 
jay_z = Artist.new("Jay-Z")
ninetynine_problems = Song.new("99 Problems", "rap")
crazy_in_love = Song.new("Crazy in Love", "pop")
 
jay_z.add_song(ninetynine_problems)
jay_z.add_song(crazy_in_love)
=end 