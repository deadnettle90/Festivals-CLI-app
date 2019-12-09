class FestivalMenu

    def self.show
        puts "How do you want to search for the festival?"
        puts "1. By the Festivals Name"
        choice = gets.chomp
        if choice == "1"
            find_festival_by_name
        end
    end

    def self.find_festival_by_name
        puts "Select a festival by name"
        puts "1. Symbiosis"
        name = gets.chomp
        if name == "1"
            service = FestivalService.new(Festival)
            festival = service.find_by_name(name)
            if festival
                puts "Found Festival!"
            else
                puts "Festival not found"
            end
        end
    end

end