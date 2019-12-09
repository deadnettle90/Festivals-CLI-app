class MainMenu

    def self.init
        puts "Welcome"
        show
    end   

    def self.show
        puts "Make your selection"
        puts "1. Artists"
        puts "2. Festivals"
        choice = gets.chomp
        if choice == "1"
            ArtistMenu.show
        elsif choice == "2"
            FestivalMenu.show
        end
    end    
end    