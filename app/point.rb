class Point
    attr_reader :x, :y

    def initialize(x,y)
        @x = x; @y = y    
    end

    # TODO: delete when refactoring is done
    def to_arr
        [x,y]
    end

    def adjecencies
        [-1,1].flat_map do |change|
            [Point.new(x + change, y), Point.new(x, y + change)]
        end
    end

    def valid?
        sum_digits(to_arr) < 23
    end

    def eql?(other)
        x == other.x && y == other.y
    end

    def hash
        [x,y].hash
    end

    private

    def sum_digits(num_arr)
        num_arr.flat_map do |num|
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