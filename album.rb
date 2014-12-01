class Album

  def initialize(album_id, album_name, artists)
    @album_id = album_id
    @album_name = album_name
    @artists = artists
  end


  def id
    @album_id
  end

  def title
    @album_name
  end


  def artists
    @artists
  end



# BROKEN

  def tracks
    @tracks = []
  end


  # DOES NOT COMPUTE PROPERLY
  def duration_min
    total_length = 0
    @tracks.each do |track|
      total_length += track[:duration_ms].to_f
    end
    total_length = (total_length/(60000)).to_f.round(2)
  end

  def track_list
    @tracks.each do |track|
       title = track[:title]
       " - #{title}\n"
    end
  end


  def summary
    "Name: #{title}\n
    Artist(s): #{artists}\n
    Duration (min.): #{duration_min}\n #{track_list}"
  end
end





# `id` - returns the ID of the album
# * `title` - returns the title of the album
# * `artists` - returns the name of the artist(s) on the album
# * `tracks` - returns an array of hashes representing each track on the album
# * `duration_min` - returns the duration of the album in minutes (`duration_ms` in the CSV is duration in milliseconds)
# * `summary` - returns a string of summary information about the album in the following format:
#
# ```no-highlight
# Name: Space Jams
# Artist(s): Tony Wrecks
# Duration (min.): 43.99
# Tracks:
# - Bout My Bread
# - Grindin Skit
# - Drop It In Tha Bank
# - Batter Up
# - I Get Toe Up
# - My Drop
# - Heavyweights
# - Preapproved - Freestyle
# - Soldiers
# - Don't Wanna See Me
# - Lookin Clean
# - One For Tha Money
# - Toe Up Slowed And Chopped
# - Swagger Up Slowed And Chopped
