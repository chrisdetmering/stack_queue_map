class Map 
    def initialize 
        @underlying_array = []
    end 

    def set(key, value)
        pair = find_pair(key)

        if pair 
            
            pair[1] = value
        else
            
            @underlying_array.push([key, pair])
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

       @underlying_array.delete(pair)

       return value
    end 

    def show 
       return underlying_array
    end 

    
    private

    attr_reader :underlying_array

    def find_pair(key)
        @underlying_array.each do |pair| 
            if key == pair[0]
                return pair
            end 
        end

        nil
    end


end 