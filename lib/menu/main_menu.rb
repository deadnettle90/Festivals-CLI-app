class MainMenu
    def self.init
        puts "Welcome"
        show
    end   

    def self.show
        puts "Make your selection"
        choice = gets.chomp
    end    
end    