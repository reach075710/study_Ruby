#set
i = gets.chomp.to_i

#main
def factorical(n)
  return 1 if n == 0

  n *= factorical(n - 1)
end

print ("#{factorical(i)}\n")