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

end