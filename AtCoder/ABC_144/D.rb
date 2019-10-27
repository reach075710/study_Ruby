#set
a,b,x = gets.chomp.split(" ").map(&:to_i)
limit = ( 2 *((a ** 2) * b - x ) ) / (a ** 3) 

#main
answer = Math.sin(Math.atan(limit))

p limit
p answer