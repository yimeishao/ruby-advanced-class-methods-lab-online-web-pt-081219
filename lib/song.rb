class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

def self.create 
song = Song.new 
@@all << song 
song
end

def self.new_by_name(name)
  song = self.create 
  song.name = name 
  song
end
  
  def self.create_by_name(name)
    song = 
end

