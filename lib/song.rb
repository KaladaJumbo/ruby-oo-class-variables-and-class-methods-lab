class Song 

    attr_accessor :artist, :name, :genre
    @@genres = []
    @@names = []
    @@artists = []
    @@list_of_songs = []
    @@count = 0
    

    def initialize(name, artist, genre)

        @name = name 
        @@names << @name

        @genre = genre
        @@genres << @genre

        @artist = artist
        @@artists << @artist

        @@list_of_songs << self

        @@count += 1
    
    end

    def self.count
       
        @@count 
        
    end

    def self.list_of_songs

        @@list_of_songs

    end

    def self.genres
        
        genre_arr = []

        self.list_of_songs.each do |sing_class|
            genre_arr << sing_class.genre
        end
        
        return genre_arr.uniq #this could be written like self.artists

    end

    def self.artists

        @@artists.uniq

    end

    def self.genre_count

        genre_hash = {}

        self.genres.each do |sing_genre|

            total = @@genres.select do |how_many|

                how_many == sing_genre
            end

            genre_hash[sing_genre.to_s] = total.length

        end

        return genre_hash

    end

    def self.artist_count

        artist_hash = {}

        artists_uniq = @@artists.uniq
        
        artists_uniq.each do |sing_name|

            total = @@artists.select do |how_many|
                
                how_many == sing_name   #getting array with names frequency

            end

            artist_hash[sing_name.to_s] = total.length

        end

        return artist_hash

    end

end