# Set
n = gets.chomp.to_i
min_multiple = 1
answer = 0
nums_arr = []
chk_num = 0
flug = 0

#Main
2.upto(n) { |i|
  flug = 0
  if i == 2 || i == 3 then
    nums_arr.push(i) 
  else
    chk_num = i / 2

    2.upto(chk_num) { |j|
      if i % j == 0 then
        tmp_num = i
        loop do
          if tmp_num % j != 0 then
            flug = 1
            break
          else
            tmp_num = tmp_num / j
            if tmp_num == 1 then
              nums_arr.push(j)
              flug = 1
            end
          end
        end
        
        break
      end
    }

    nums_arr.push(i) if flug == 0
  
  end
}

# p nums_arr
0.upto(nums_arr.length - 1) {|i|
  min_multiple *= nums_arr[i]
}

answer = min_multiple + 1
print ("#{answer}\n")

# testcace = 10 ** 13
# p "OK "if answer <= testcace
