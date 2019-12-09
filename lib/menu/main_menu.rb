require "tty-prompt"
require "colorize"

class MainMenu

    def self.init
        puts " 
╦ ╦┌─┐┬  ┌─┐┌─┐┌┬┐┌─┐  ┌┬┐┌─┐  ╔═╗┌─┐┌─┐┌┬┐┬┬  ┬┌─┐┬  ┌─┐  ┌─┐┌┐┌┌┬┐  ╔═╗┬─┐┌┬┐┬┌─┐┌┬┐┌─┐  
║║║├┤ │  │  │ ││││├┤    │ │ │  ╠╣ ├┤ └─┐ │ │└┐┌┘├─┤│  └─┐  ├─┤│││ ││  ╠═╣├┬┘ │ │└─┐ │ └─┐  
╚╩╝└─┘┴─┘└─┘└─┘┴ ┴└─┘   ┴ └─┘  ╚  └─┘└─┘ ┴ ┴ └┘ ┴ ┴┴─┘└─┘  ┴ ┴┘└┘─┴┘  ╩ ╩┴└─ ┴ ┴└─┘ ┴ └─┘  

        ".colorize(:magenta)
        show
    end   

    def self.show
        prompt = TTY::Prompt.new
        choices = %w(Festivals Artists)
        response = prompt.select("What would you like to see?".colorize(:yellow), choices)
        if response == "Artists"
            ArtistMenu.show
        elsif response == "Festivals"
            FestivalMenu.show
        end
    end    
end    