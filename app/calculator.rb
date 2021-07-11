def adjescent_points(num_pair)
    [-1,1].flat_map do |change|
        [[num_pair[0] + change, num_pair[1]], [num_pair[0], num_pair[1] + change]]
    end
end

def valid?(num_arr)
    sum_digits(num_arr) < 23
end

def sum_digits(num_arr)
    num_arr.flat_map do |num|
        num = num.abs
        divide_by = 10
        result = []
        while num > 0 do
            result << num % divide_by
            num = num / divide_by
            divide_by *= 10
        end
        result
    end.sum
end