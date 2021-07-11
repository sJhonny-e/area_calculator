class Point
    attr_reader :x, :y

    def initialize(x,y)
        @x = x; @y = y    
    end

    # TODO: delete when refactoring is done
    def to_arr
        [x,y]
    end

    def eql?(other)
        x == other.x && y == other.y
    end

    def hash
        [x,y].hash
    end
end