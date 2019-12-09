class ArtistMenu

    def self.show
    puts "What you would like to do?"
    puts "1. Find artists by name" 
    choice = gets.chomp
        if choice == "1"
            find_artist_by_name
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
end