describe 'User Stories' do
    
    # As an air traffic controller 
    # So I can get passengers to a destination 
    # I want to instruct a plane to land at an airport and confirm that it has landed 
    it 'so planes land at airports, instruct a plane to land' do
        airport = Airport.new(50)
        plane= Plane.new
        expect { airport.land(plane) }.not_to raise_error
    end

    # As an air traffic controller 
    # So I can get passengers on the way to their destination 
    # I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport
    it 'so planes take off from airports, instruct a plane to take off' do
        airport = Airport.new(50)
        plane = Plane.new
        expect { airport.take_off(plane) }.not_to raise_error
    end

    # As an air traffic controller 
    # To ensure safety 
    # I want to prevent landing when the airport is full
    it 'does not allow planes to land when airport is full' do
        airport = Airport.new(50)
        plane = Plane.new
        50.times do
            airport.land(plane)
        end
        expect { airport.land(plane) }.to raise_error 'Cannot land plane: airport is full. Take off a plane first.'
    end

    # As the system designer
    # So that the software can be used for many different airports
    # I would like a default airport capacity that can be overridden as appropriate
    # It 'allow for default capacity, that can be overridden' do
    #     airport = Airport.new(50)
    #     plane = Plane.new
    #     capacity = default


        
    # end


end
