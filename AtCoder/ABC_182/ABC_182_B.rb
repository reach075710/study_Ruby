# Set
require 'prime'

n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i).sort
a_len = a_arr.length
prime_arr=Prime.each(a_arr[a_len - 1]).to_a
tmp_count = 0
gcd = 0
max_gcd = a_len
answer = 0

# Main
prime_arr.each { |prime|
  tmp_count = 0
  0.upto(a_len - 1) do |i|
    tmp_count += 1 if a_arr[i] % prime == 0
  end
  if tmp_count >= gcd then
    gcd = tmp_count
    answer = prime
  end
  break if gcd == max_gcd
}

print ("#{answer}\n")