require 'pry'

class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(file_name)  
        file_name = file_name.split(" - ")
        song = Song.new
        song.name = file_name[1]
        song.artist = file_name[0]
        @@all << self
    end

    def arist_name(arist_name)
        @arist = Artist.find_or_create_by_name(artist_name)
    end

end
