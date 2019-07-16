class Map 
    def initialize 
        @underlying_array = []
    end 

    def set(key, value)
        
        
        @underlying_array.each do |pair| 
            
        end 

    end 
     
    def get(key)
    end 

    def delete(key)
    end 

    def show 
    end 

    
    private

    attr_reader :underlying_array

    def has_key?(key)
        @underlying_array.each do |pair| 
            if key == pair[0]
                return true
            end 
        end

        false 
    end
end 