#set
# a の b乗を求める
a,b = gets.chomp.split(" ").map(&:to_i)


#main
def power (a, b)
  return 1 if b == 0

  a *= power(a, b - 1)
end

p power(a, b)