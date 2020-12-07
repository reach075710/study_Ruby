# Set
s,w = gets.chomp.split(" ").map(&:to_i)
result = "safe"

# main
result = "unsafe" if s <= w
print ("#{result}\n")