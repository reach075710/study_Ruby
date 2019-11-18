#set
a,b = gets.chomp.split(" ").map(&:to_i)
answer_ary = []

#main
answer_ary[0] = a + b
answer_ary[1] = a - b
answer_ary[2] = a * b
answer_ary.sort! {|a , b| b <=> a }

print ("#{answer_ary[0]}\n")