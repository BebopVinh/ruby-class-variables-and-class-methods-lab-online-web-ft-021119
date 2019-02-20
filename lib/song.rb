class Song
  @@count = 0
  @@artists, @@genres = [], []
  @@artist_count, @@genre_count = {}, {}
  attr_reader :name
  attr_accessor :artist, :genre

  def initialize(song_name, song_artist, song_genre)
    @name = song_name
    @@count += 1

    @artist = song_artist

    @@artists << song_artist

    @genre = song_genre
    @@genres << song_genre.downcase
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.count
    @@count
  end

  def self.genre_count
    @@genres.each do |genre|
      if @@genre_count.has_key?(genre) == false
        @@genre_count[genre] = @@genres.count(genre)
      end
    end
    @@genre_count
  end #end of genre_count Class Method

  def self.artist_count
    @@artists.each do |artist|
      if @@artist_count.has_key?(artist) == false
        @@artist_count[artist] = @@artists.count(artist)
      end
    end
    @@artist_count
  end

end #end of Song Class
