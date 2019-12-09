class FestivalService

    def initialize fest_repo
        @fest_repo = fest_repo
    end

    def find_by_name(name)
        if name == nil
            raise "name cannot be nil"
        end
        @fest_repo.find_by(name: name)
    end

    def find_by_country(country)
        if country == nil
            raise "country cannot be nil"
        end
        @fest_repo.where(country: country)
    end

end
