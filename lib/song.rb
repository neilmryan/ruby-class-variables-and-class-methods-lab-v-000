class Song

	@@count = 0
	@@genres = []
	@@artists = []


	attr_accessor :name, :artist, :genre

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@count += 1
		@@genres << genre
		@@artists << artist
	end

	def self.count
		@@count
	end

	def self.genres
		@@genres.uniq
	end

	def self.artists
		@@artists.uniq
	end

	def self.genre_count
		genres_hash = {}
    		self.genres.each do |genre|
      			genres_hash[genre] = @@genres.count {|g| g == genre}
   			end
    	genres_hash
	end

	def self.artist_count
		artists_hash = {}
			self.artists.each do |artist|
				artists_hash[artist] = @@artists.count {|a| a == artist}
			end
		artists_hash
	end

end