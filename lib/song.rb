class Song

   @@all = []

   attr_accessor :name, :artist


   def initialize(name)
     @name = name
     @@all << self
   end
   #def self.new_by_filename

   def artist_name(artist)
      Artist.all.find {|artist_inst| Artist.name == artist}
   end


   def self.all
     @@all
   end

end
