#set
x = gets.chomp.to_i
number_of_product = x / 100
number_under100 =  x - (number_of_product * 100) 
answer = 0

#main
answer = 1 if number_of_product * 5 >= number_under100

print ("#{answer}\n")