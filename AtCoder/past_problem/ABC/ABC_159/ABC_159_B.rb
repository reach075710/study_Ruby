# Set
s = gets.chomp.split("")
s_len = s.length
answer = 'Yes'


# Main
0.upto((s_len - 1)/2 - 1) do |i|
  if s[i] != s[s_len - 1 - i] then
    answer = 'No'
    print ("#{answer}\n")
    exit
  end
end

s1 = s[0..((s_len - 1)/2 - 1)]
s1_len = s1.length
s1_range = s1_len / 2

0.upto(s1_range) do |i|
  if s1[i] != s1[s1_len - 1 - i] then
    answer = 'No'
    print ("#{answer}\n")
    exit
  end
end

print ("#{answer}\n")
