count = 0
gets.chomp.split("").map(&:to_i).each do |i|
    if i == 1 then
        count += 1
    end
end
print ("#{count} \n") 
