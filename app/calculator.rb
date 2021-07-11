require 'set'

def valid_area(start_point, valid_point_callback = ->(point) {  })
    result_set = Set.new
    stack = [start_point]
    
    while !stack.empty? do
        point = stack.pop
        result_set << point
        point.adjecencies.reject { |new_point| !valid?(new_point) || result_set.include?(new_point) }
            .each { |valid_point| stack << valid_point ; valid_point_callback.call(valid_point.to_arr)}
    end

    result_set.size
end

def valid?(num_arr)
    sum_digits(num_arr.to_arr) < 23
end

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