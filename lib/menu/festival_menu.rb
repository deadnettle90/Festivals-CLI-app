require "tty-prompt"

class FestivalMenu

    def self.show
        puts ""
        prompt = TTY::Prompt.new
        response = prompt.select("How do you want to search for the festival?".colorize(:magenta), %w(Name Country Back))
        puts ""    
        if response == "Name"
            find_festival_by_name
        elsif response == "Country"
            find_festival_by_country
        elsif response == "Back"  
            MainMenu.show  
        end
    end

    def self.find_festival_by_name
        puts ""
        prompt = TTY::Prompt.new
        puts "What festival you are looking for?".colorize(:yellow)
        puts ""
        name = gets.chomp
        service = FestivalService.new(Festival)
        festival = service.find_by_name(name)
        if festival
            puts ""
            puts "Found Festival!".colorize(:cyan)
            puts ""
        else
            puts ""
            puts "Festival not found".colorize(:red)
        end
    end

    def self.find_festival_by_country
        puts "Type a country"
        puts ""
        country = gets.chomp
        service = FestivalService.new(Festival)
        festival_list = service.find_by_country(country)
        if festival_list.size > 0
            puts ""
            puts "We found some festivals in that country!".colorize(:cyan)
            puts ""
            festival_list.each {|festival| puts festival.name}
            puts ""
        else
            puts ""
            puts "Festival not found".colorize(:red)
        end

    end

end