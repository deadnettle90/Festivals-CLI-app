require '../lib/services/festival_service'

RSpec.describe FestivalService do 
    describe "#find_by_name" do 
     
        it "returns nil when festival not found" do 
        #arrange
            fest_repo = double
            allow(fest_repo).to receive(:find_by) {nil}
        #act
            service = FestivalService.new(fest_repo)
            result = service.find_by_name("")
        #assert
            result == nil
        end

        it "should return the festival when found" do
        #arrange
            festival_name = "Boom" 
            festival = instance_double("festival", :name => festival_name)
            fest_repo = double
            allow(fest_repo).to receive(:find_by) {festival}
        #act
            service = FestivalService.new(fest_repo)
            result = service.find_by_name(festival_name)
        #assert
            result.name == festival_name
        end

        it "should raise an exception when passed nil" do
        #arrange
            service = FestivalService.new(nil)
            expect{service.find_by_name(nil)}.to raise_error("name cannot be nil")
        end
    end
    
    describe "#find_by_country" do
        it "should return empty list if nothing found" do
            fest_repo = double
            allow(fest_repo).to receive(:where) {[]}

            service = FestivalService.new(fest_repo)
            result = service.find_by_country("USA")
            result.size == 0
        end
        it "should return a list of all festivals that match a country" do
         #arrange   
            festival_country = "Portugal"
            festival = instance_double("festival", :country => festival_country)
            fest_repo = double
            allow(fest_repo).to receive(:where) {[festival]}
        #act 
            service = FestivalService.new(fest_repo)
            result = service.find_by_country(festival_country)
        #assert
            result[0].country == festival_country
        end
        it "should raise an exception when passed nil" do
            service = FestivalService.new(nil)
            expect{service.find_by_country(nil)}.to raise_error("country cannot be nil")
        end      
    end
end