# Set
n = gets.chomp.to_i
not_choice = 0
answer = n + 1

# main
min = 1
max = n

if n == 1 || n == 2 then
  print ("1\n")
  exit
end

loop do
  k = (max + min) / 2
  if max == (min + 1) then
    not_choice = k
    break
  end
  sum = (1 + k) * k / 2 
  max = k if sum > n + 1
  min = k if sum <= n + 1
  # print ("max=#{max}\n")
  # print ("min=#{min}\n")
  # print ("k=#{k}\n")
  # print ("sum=#{sum}\n")
  # sleep 1

end
answer -= not_choice

print ("#{answer}\n")