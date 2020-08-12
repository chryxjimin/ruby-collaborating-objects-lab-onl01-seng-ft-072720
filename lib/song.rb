class Song

   @@all = []

   attr_accessor :name, :artist


   def initialize(name)
     @name = name
     @@all << self
   end
   #def self.new_by_filename

   def artist_name(artist_name)
      @artist = Artist.find_or_create_by_name(artist_name)
      #self.artist
   end


   def self.all
     @@all
   end

end
