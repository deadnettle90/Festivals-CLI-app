class ArtistService
    
    def initialize artist_repo
        @artist_repo = artist_repo
    end     

    def find_by_name name 
        if name == nil
            raise "name cannot be nil"
        end 
        @artist_repo.find_by(name: name)
    end
end   