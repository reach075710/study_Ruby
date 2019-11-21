#set
a,b,c = gets.chomp.split(" ").map(&:to_i)
sum_ab = a + b
sum_bc = b + c
sum_ca = c + a
answer = 'No'

#main
answer = 'Yes' if sum_ab == c || sum_bc == a || sum_ca == b
print ("#{answer}\n")