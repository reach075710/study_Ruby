#set
input = gets.chomp.split(" ").map(&:to_i)

#main
def merge_sor(ary)
  n = ary.size
  return ary.dup if n <= 1

  ary_left = merge_sor(ary[0...(n / 2)])
  # ary_right = merge_sor(ary[(n / 2)..(n - 1)])
  ary_right = merge_sor(ary[(n / 2)..(n - 1)])

  ary = []
  loop do
    if ary_left.empty?
      ary.concat(ary_right)
      break
    elsif ary_right.empty?
      ary.concat(ary_left)
      break
    elsif ary_left[0] <= ary_right[0]
      ary << ary_left.shift
    else
      ary << ary_right.shift
    end
  end
  
  return ary
end


p merge_sor(input)