require "tty-prompt"

class ArtistMenu

    def self.show
    prompt = TTY::Prompt.new
    puts ""
    response = prompt.select("Find artist by".colorize(:cyan), %w(Name Artist Back))
        puts ""
        if response == "Name"
            find_artist_by_name
        else response == "Back"
             MainMenu.show
        end   
    
    end 

    def self.find_artist_by_name
        puts ""
        puts "Okay, whats the name of the artist you would like to find?".colorize(:magenta)
        puts ""
        name = gets.chomp
        service = ArtistService.new(Artist)
        artist = service.find_by_name(name)
        if artist
            puts ""
            puts "Found artist! name: #{artist.name}"..colorize(:cyan)
            puts ""
        else
            puts ""
            puts "Artist not found".colorize(:red)
            puts ""
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