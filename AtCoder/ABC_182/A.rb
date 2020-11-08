# set
a,b = gets.chomp.split(" ").map(&:to_i)
max_follow = 2 * a + 100
answer = 0

# main
answer = max_follow - b
print ("#{answer}\n")