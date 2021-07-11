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