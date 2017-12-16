class Song

  attr_accessor :artist, :name, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @genre = genre
    @artist = artist
    @name = name

    @@count += 1
    @@genres << genre
    @@artist << artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artist.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count

    artist_count = {}
    @@artist.each do |artist|
      if artist_count.include?(artist)
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
       end
     end
     artist_count
  end

  def self.genre_count

    genre_hash = {}

    @@genres.each do |value|
      genre_hash[value] += 1
    end
    genre_hash
  end

end
