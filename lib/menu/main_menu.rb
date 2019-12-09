class MainMenu
    def self.init
        puts "Welcome"
        show
    end   

    def self.show
        puts "Make your selection"
        puts "1. Artists"
        choice = gets.chomp
        if choice == "1"
            ArtistMenu.show
        end
    end    
end    