# Create a Playlist from Driver Code

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# Pseudocode



# Initial Solution
class Song
	attr_reader :song, :artist, :played

	def initialize song, artist
		@song = song
		@artist = artist
		@played = false
	end

	def play
		@played = true
	end
end

class Playlist
	attr_reader :num_of_tracks

	def initialize song1, song2, song3
		@playlist = [song1, song2, song3]
	end

	def add song1, song2
		@playlist << song1
		@playlist << song2
	end

	def remove song
		@playlist.delete(song)
	end


end

# Refactored Solution






# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
puts my_playlist
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection