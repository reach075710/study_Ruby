#set
counter = 0
exit_code = 0

#main
n = gets.to_i
numbers_arr = gets.chomp.split(" ").map(&:to_i)

if n != numbers_arr.length then
    exit
end

loop do
    numbers_arr = numbers_arr.map do |i| 
        if i % 2 == 1 then
            exit_code = 1
            break
        end
        i / 2
    end

    if exit_code == 1 then
        break
    end

    counter += 1
end

print ("#{counter} \n")
