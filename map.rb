class Map 
    def initialize 
        @underlying_array = []
    end 

    def set(key, value)
        pair = find_pair(key)

        if pair 
            
            pair[1] = value
        else
            
            underlying_array.push([key, value])
        end

    end 
     
    def get(key)
        pair = find_pair(key)
        value = pair[1]

        return value
    end 

    def delete(key)
        pair = find_pair(key)
        value = pair[1]

       underlying_array.delete(pair)

       return value
    end 

    def show 
       print underlying_array
       puts
    end 

    
    private

    attr_reader :underlying_array

    def find_pair(key)
        underlying_array.each { |pair| return pair if pair[0] == key } 
        nil
    end


end 


my_map = Map.new

my_map.set(1, 2)
my_map.set(2, 5)

my_map.show
