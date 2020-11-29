# Set
n = gets.chomp.to_i
not_choice = 0
answer = n

# main
min = 1
max = n
loop do
  sum = (min + max) * (max - min + 1) / 2 
  k = max / 2
  max = k if sum > n + 1
  min = k if sum <= n + 1
  print ("sum=#{sum}\n")
  print ("max=#{max}\n")
  print ("min=#{min}\n")
  print ("k=#{k}\n")
  sleep 1
  
end
answer -= not_choice

print ("#{answer}\n")