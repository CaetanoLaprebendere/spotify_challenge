# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

# Your Code begins from this line onwards #

command, *values = ARGV
playlist = []

if command == "--add"
	p "Please add your song name and specify wether it is played or unplayed"
    Song.create(song_name: values[0], played_status: values[1])
	puts "Your song " + values[0] + " has been added."
elsif command == "--list"
	p Song.all
elsif command == "--update" 
	values.delete
	values = gets.chomp
elsif command == "--remove"	
	values.destroy
end

