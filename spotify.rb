# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

# Your Code begins from this line onwards #

command, *values = ARGV
playlist = []

if command == "--add"
    Song.create(song_name: values[0], played_status: values[1])
	puts "Your song " + values[0] + " has been added."
  
  elsif command == "--list"

	print "
	No.   Song Name       Played Status
	===   ===========     =============
	"  

    i = 1 

	Song.all.order("played_status").each do |song|
			puts "        #{i}     #{song.song_name}  #{song.played_status}          "
			i += 1
	end
	puts
  
  elsif command == "--update" 
	song = Song.find_by(song_name: values[0])
    song.update(song_name: values[1], played_status: values [2])
    puts "you updated your song info"
  
  elsif command == "--remove"	
	song = Song.find_by(song_name: values[0])
	if song
	song.destroy
	puts "you removed the song from your playlist" 
  end

    for n in 0..Song.all.length-1
	Song.all.order("played_status").each do |n| 
	end
	end

end


