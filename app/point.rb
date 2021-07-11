class Point
    attr_reader :x, :y

    def initialize(x,y)
        @x = x; @y = y    
    end

    # TODO: delete when refactoring is done
    def to_arr
        [x,y]
    end
end