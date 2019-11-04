#set
set_ary = gets.chomp.split(" ").map(&:to_i)
p set_ary

#main
def quick_sort(ary)
  ary = ary.dup
  n = ary.size
  return ary if n <= 1

  #pivot は配列ary のランダムな場所の値をとる
  pivot = ary.delete_at(rand(n))

  #pivot 以下の数とそれ以外で分ける
  ary_less_eq, ary_greater = ary.partition { |x| x <= pivot }

  #"pivot 以下" "pivot" "pivot以上" で配列を返す
  return quick_sort(ary_less_eq) + [pivot] + quick_sort(ary_greater)
end

p quick_sort(set_ary)