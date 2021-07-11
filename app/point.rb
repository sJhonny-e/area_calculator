class Point
    MAGIC_NUMBER = 23
    attr_reader :x, :y

    def initialize(x,y)
        @x = x; @y = y    
    end

    def adjecencies
        [-1,1].flat_map do |change|
            [Point.new(x + change, y), Point.new(x, y + change)]
        end
    end

    def valid?
        sum_digits < MAGIC_NUMBER
    end

    # methods required for comparing instances, for purposes of storing in a Set
    def eql?(other)
        x == other.x && y == other.y
    end

    def hash
        [x,y].hash
    end

    private

    def sum_digits
        [x,y].flat_map do |num|
            num = num.abs
            result = []
            while num > 0 do
                result << (num % 10 || num)
                num = num / 10
            end
            result
        end.sum
    end
end