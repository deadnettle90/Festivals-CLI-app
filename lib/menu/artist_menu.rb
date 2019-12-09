require 'pp'

class ArtistMenu

    def self.show
    puts "What you would like to do?"
    puts "1. Find artists by name" 
    puts "2. Find artists by genre"
    choice = gets.chomp
        if choice == "1"
            find_artist_by_name
        elsif choice == "2"
            find_artist_by_genre   
        end   
    end 

    def self.find_artist_by_name
        puts "Okay, whats the name of the artist you would like to find?"
        name = gets.chomp
        service = ArtistService.new(Artist)
        artist = service.find_by_name(name)
        if artist
            puts "Found artist! name: #{artist.name}"
        else
            puts "Artist not found"
        end        
    end    

    def self.find_artist_by_genre
        puts "What type of music do ya like?"
        genre = gets.chomp
        service = ArtistService.new(Artist)
        artists = service.find_by_genre(genre)
        if artists.size > 0
            artists.each {|artist| puts artist.name}
        else 
            puts "Sorry, we don't know that genre yet"    
        end    
    end    
end