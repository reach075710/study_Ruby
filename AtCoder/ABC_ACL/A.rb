# set
k = gets.chomp.to_i
answer = ""
string= "ACL"

# main
0.upto(k - 1) do |i|
  answer = "#{answer}#{string}"
end
print ("#{answer}\n")