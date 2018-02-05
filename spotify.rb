# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

# Your Code begins from this line onwards #

command, *values = ARGV
playlist = []

if command == "--add"
	puts "Please add your song name and specify wether it is played or unplayed"
	values = gets.chomp
	playlist << values  
	puts "Your song " + values + " has been added."
elsif command == "--list"
	p values.each 
elsif command == "--update" 
	values.delete
	values = gets.chomp
elsif command == "--remove"	
	values.destroy
end

