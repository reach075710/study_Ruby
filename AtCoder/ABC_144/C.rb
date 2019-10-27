#set
n = gets.chomp.to_i
pair_arr = Array.new
arr_count = 0
limit = 0
min_sum = n + 1
temp_sum = 0
arr_address = 0
answer = 0

#main
limit = Math.sqrt(n).to_s.split(".").map(&:to_i)
1.upto(limit[0]) do |i|
  if n % i == 0 then
    pair_arr[arr_count] = i
    arr_count += 1
  end
end

0.upto(arr_count - 1) do |x|
  temp_sum = pair_arr[x] + (n / pair_arr[x])
  if temp_sum <= min_sum then
    min_sum = temp_sum
  end
end
answer = min_sum - 2
print ("#{answer}\n")