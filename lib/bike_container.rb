module BikeContainer
	DEFAULT_CAPACITY = 10
    
    def bikes
    	@bikes ||= []
    end

    def capacity
    	@capacity ||= DEFAULT_CAPACITY
    end

    def capacity=(value)
    	@capacity=value
    end
    	
    def dock(bike)
      raise "Fuck the Station is full" if full?
      raise "No bike to be docked" if bike==nil
     bikes << bike

    end

    def release(bike)
      raise "Station is empty" if bike_count == 0
      raise "No bike to be removed" if bike==nil
      raise "bike must be a real bike or Class" if bike.class != 'Bike'
      bikes.delete(bike)
    end

	def bike_count
      bikes.count
	end

	def full?
		bike_count == capacity
	end	

	def available_bikes
		bikes.reject { |bike| bike.broken? }
	end
end