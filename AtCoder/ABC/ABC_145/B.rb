#set
n = gets.chomp.to_i
s = gets.chomp.split("")
s_length = s.length

answer = 'No'


#main
if s_length.odd? then
  print ("#{answer}\n")
  exit
else
  0.upto(s_length / 2 - 1) do |i|
    if s[i] != s[s_length / 2 + i] then
      print ("#{answer}\n")
      exit
    end
  end
  answer ='Yes'
  print ("#{answer}\n")
end
