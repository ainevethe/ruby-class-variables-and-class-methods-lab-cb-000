class Song

  attr_accessor :artist, :name, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @genre = genre
    @artists = artist
    @name = name

    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count

    artist_count = {}
    @@artists.each do |artist|
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
