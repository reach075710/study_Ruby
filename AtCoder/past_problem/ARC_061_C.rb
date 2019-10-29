#set
# s = gets.chomp.split("")
# s_length = s.join.length
# sum = 0

#main
s = gets.chomp
t = ""
ans = 0
["", "+"].repeated_permutation(s.length) do |plus|
  (s.length).times do |i|
    t << plus[i]
    t << s[i]
  end
  p t
  ans += t.split("+").map(&:to_i).inject(:+)
  t = ""
end
p ans / 2