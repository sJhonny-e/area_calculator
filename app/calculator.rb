require 'set'

def valid_area(start_point, valid_point_callback = ->(point) {  })
    result_set = Set.new
    stack = [start_point]
    
    while !stack.empty? do
        point = stack.pop
        result_set << point
        point.adjecencies.reject { |new_point| !new_point.valid? || result_set.include?(new_point) }
            .each { |valid_point| stack << valid_point ; valid_point_callback.call(valid_point.to_arr)}
    end

    result_set.size
end

