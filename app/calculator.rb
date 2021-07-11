require 'set'

def valid_area(start_point)
    result_set = Set.new
    stack = [start_point]
    do_valid_area(result_set, stack)
    result_set.size
end

def do_valid_area(result_set, stack)
    while !stack.empty? do
        point = stack.pop
        result_set << point
        puts "adding point #{point}, with sum of digits #{sum_digits(point)}"
        adjescent_points(point).reject { |new_point| !valid?(new_point) || result_set.include?(new_point) }
            .each { |valid_point| stack << valid_point}
    end
end

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
        result = []
        while num > 0 do
            result << (num % 10 || num)
            num = num / 10
        end
        result
    end.sum
end