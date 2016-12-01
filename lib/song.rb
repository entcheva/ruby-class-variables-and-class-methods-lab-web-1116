class Song
  @@count = 0
  @@artists = []
  @@artist_count = {}
  @@genres = []
  @@genre_count = {}

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash = {}
    @@genres.each do |key, value|
      if hash[key].nil?
        hash[key] = 1
      else
        hash[key] += 1
      end
    end
    return hash
  end

  def self.artist_count
    hash = {}
    @@artists.each do |key, value|
      if hash[key].nil?
        hash[key] = 1
      else
        hash[key] += 1
      end
    end
    return hash
  end

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
  end

end


puts Song.genre_count
  # => {"rap" => 5, "rock" => 1, "country" => 3}
