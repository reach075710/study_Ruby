n = gets.to_i
counter = 0
numbers_arr = gets.chomp.split(" ").map(&:to_i)
# if numbers_arr.length != n then
#     exit
# end
loop do
    for i in 0 .. n -1
        if numbers_arr[i] < 1 || numbers_arr[i] % 2 == 1 then
            break
        end

        numbers_arr[i] == numbers_arr[i] / 2
        counter += 1
        p numbers_arr[i]
    end
    if numbers_arr[i] < 1 || numbers_arr[i] % 2 == 1 then
        break
    end
end

print ("#{counter} \n")