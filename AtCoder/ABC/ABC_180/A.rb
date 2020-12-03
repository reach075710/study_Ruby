# Set
n,a,b = gets.chomp.split(" ").map(&:to_i)
answer = 0

# main
answer = n - a + b
print ("#{answer}\n")