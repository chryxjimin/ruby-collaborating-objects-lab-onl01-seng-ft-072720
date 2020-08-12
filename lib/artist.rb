require "pry"
class Artist

   @@all = []

   attr_accessor :name, :song

   def initialize(name)
     @name = name
     @@all << self
   end

   def add_song(song)
      song.artist = self
   end


   def songs
      Song.all.select {|song| song.artist == self}
   end

   def self.find_or_create_by_name(name)
      #binding.pry
       found =  self.all.find {|artist| artist.name == name}
       if found
         found
       else
           self.new(name)
       end
   end

   def print_songs
       puts songs.find_all {|song| song.artist == self}
   end


   def self.all
     @@all
   end
end
