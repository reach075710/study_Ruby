# Set
n = gets.chomp.to_i
answer = 0
output_arr = []
counter = 0

# Main
1.upto(n) do |i|
  answer = n / i
  if n % i == 0 then
    output_arr[counter] = answer
    counter += 1
  end
end

output_len = output_arr.length
(output_len - 1).downto(0) do |i|
  print ("#{output_arr[i]}\n")
end