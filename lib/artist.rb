class Artist
    attr_accessor :name
    attr_writer :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = songs
        @@all << self
    end

    def songs
        Song.all.find_all { |song| song.artist == self }
    end

    def self.all
        @@all
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end

    def self.song_count
        return Song.all.count
    end
     
end