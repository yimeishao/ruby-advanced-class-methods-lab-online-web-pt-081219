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
    song = self.create 
    song.name = name 
    song 
  end
  
  def self.find_by_name(song)
   @@all.find do |a|
     a.name == song 
   end
 end
 
 def self.find_or_create_by_name(song)
   @@all.find do |a| 
     if a.name == song 
       true 
     else 
       song.create 
     end
   end
end

