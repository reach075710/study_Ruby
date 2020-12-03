#set
a_1,a_2,a_3 = gets.chomp.split(" ").map(&:to_i)
sum = a_1 + a_2 + a_3

#main
print ("win\n") if sum <= 21
print ("bust\n") if sum > 21