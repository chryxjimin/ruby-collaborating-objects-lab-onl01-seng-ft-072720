class Song

   @@all = []

   attr_accessor :name, :artist


   def initialize(name)
     @name = name
     @@all << self
   end

   #def artist=(artist)
  #   @artist = artist
  # end

   #def self.new_by_filename

   def artist_name
      self.artist.name
   end


   def self.all
     @@all
   end

end
