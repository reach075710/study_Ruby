#set
n = gets.chomp.to_i
power = 1

#main
( 1 .. n ).each do |i|
    power = i * (power % (10 ** 9 + 7))
end
answer = power % (10 ** 9 + 7)
print ("#{answer}\n")