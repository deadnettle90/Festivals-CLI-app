class MainMenu

    def self.init
        puts "Welcome"
        show
    end   

    def self.show
        puts "Make your selection"
        puts "How would you like to search? 1. By Festivals"
        choice = gets.chomp
        if choice == "1"
            FestivalMenu.show
        end
    end


end    