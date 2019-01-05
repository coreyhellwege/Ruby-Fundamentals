def balanced_num(number)
    values_arr = number.to_s.chars
        first_num = values_arr[0]
        last_num = values_arr[-1]
        first_num.to_i
        last_num.to_i
    if first_num.sum == last_num.sum
        puts "Balanced"
    else puts "Not Balanced"
    end

end

balanced_num(1)
balanced_num(767)
balanced_num(768)
balanced_num(7648)
