class FestivalMenu

    def self.show
        puts "How do you want to search for the festival?"
        puts "1. By the Festivals Name"
        puts "2. By the Festivals Country"
        choice = gets.chomp
        if choice == "1"
            find_festival_by_name
        elsif choice == "2"
            find_festival_by_country
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

    def self.find_festival_by_country
        puts "Select a country"
        puts "1. Portugal"
        country = gets.chomp
        if country == "1"
            service = FestivalService.new(Festival)
            festival_list = service.find_by_country(country)
            if festival_list.size > 0
                puts "We found some festivals in that country!"
                festival_list.each {|festival| puts festival.name}
            else
                puts "Festival not found"
            end
        end
    end

end