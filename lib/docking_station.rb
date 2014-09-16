require_relative 'bike_container'

class DockingStation

	include BikeContainer
    
    def initialize(options = {})
    	self.capacity = options.fetch(:capacity, capacity)
    end

    def empty?
    	self.bike_count == 0 ? true : false
    end

end