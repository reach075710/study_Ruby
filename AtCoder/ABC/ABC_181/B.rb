n = gets.chomp.to_i
answer = 0
tmp_answer = 0
a_b_len = 0

n.times do
  a,b = gets.chomp.split(" ").map(&:to_i)
  a_b_len = b - a + 1
  tmp_answer = (a_b_len * (2 * a + a_b_len - 1)) / 2
  answer += tmp_answer
end

print ("#{answer}\n")