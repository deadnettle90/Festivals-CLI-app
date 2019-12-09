require "../lib/services/artist_service"

RSpec.describe ArtistService do
    describe "#find_by_name" do
       
        it "returns nil when artist not found" do
            # Arrange
            artist_repo = double
            allow(artist_repo).to receive(:find_by) {nil}
        
            # Act
            service = ArtistService.new(artist_repo)
            result = service.find_by_name("")

            # Assert
            result == nil
        end

        it "should return the artist when found" do
            # Arrange
            artist_name = "The Strokes"
            artist = instance_double("artist" , :name => artist_name)
            artist_repo = double
            allow(artist_repo).to receive(:find_by) {artist}

            # Act
            service = ArtistService.new(artist_repo)
            result = service.find_by_name(artist_name)

            # Assert
            result.name == artist_name
        end    

        it "should raise an exception when passed nil" do
            service = ArtistService.new(nil)

            expect{service.find_by_name(nil)}.to raise_error("name cannot be nil") 

        end    
    end

    describe "#find_by_genre" do

        it "should return empty list if nothing found" do
            # Arrange
            artist_repo = double
            allow(artist_repo).to receive(:where) {[]}

            # Act
            service = ArtistService.new(artist_repo)
            result = service.find_by_genre("Electronic")

            # Assert
            result.size == 0
        end   
        
        it "return a list of all artists that match that genre" do
            # Arrange
            artist_genre = "Electronic"
            artist = instance_double("artist" , :genre => artist_genre)
            artist_repo = double
            allow(artist_repo).to receive(:where) {[artist]}

            # Act
            service = ArtistService.new(artist_repo)
            result = service.find_by_genre(artist_genre)

            # Assert
            result[0].genre == artist_genre
        end   
        
        it "should raise an exception when passed nil" do
            service = ArtistService.new(nil)

            expect{service.find_by_genre(nil)}.to raise_error("genre cannot be nil") 

        end

    end
end    

