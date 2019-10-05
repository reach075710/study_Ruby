n = gets.to_i
counter = 0
numbers_arr = gets.chomp.split(" ").map(&:to_i)
# if numbers_arr.length != n then
#     exit
# end
numbers_arr.each do |i| 
    if i % 2 == 1 then
        break
    end

    numbers_arr[i] == numbers_arr[i] / 2
    counter += 1
    p numbers_arr[i]
end

if numbers_arr[] < 1 || numbers_arr[i] % 2 == 1 then
    break
end


print ("#{counter} \n")