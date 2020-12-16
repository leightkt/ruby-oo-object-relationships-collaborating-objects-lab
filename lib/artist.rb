class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def add_song(name)
        song = Song.new(name)
        song.artist = self
    end

    def self.find_or_create_by_name(name)
        artist_name = all.find do |artist|
            artist.name == name
        end
        if artist_name == nil
            artist_name = Artist.new(name)
        end
        artist_name
    end

    def print_songs
        songs.each do |song| 
            p "#{song.name}" + "\n" 
        end
    end

end