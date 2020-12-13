# Set
l = gets.chomp.to_i
answer = 1
top = l - 1
div = 11
top_arr = []
div_arr = []

# Main
if l == 12 then
  answer = 1
  print ("#{answer}\n")
  exit
end

if l <= 22 then
  div = top - 11
end

0.upto(div - 1) {|i|
  top_arr[i] = top - i
  tmp_div = div - i
  # div_arr[i] = div - i
  if tmp_div % 2 != 0 && tmp_div % 3 != 0 then
    div_arr.push(tmp_div)
  elsif tmp_div % 2 == 0 then
    loop {
      div_arr.push(2)
      tmp_div = tmp_div / 2
      if tmp_div % 2 != 0 then
        div_arr.push(tmp_div)
        break
      end
    } 
  else
    loop {
      div_arr.push(3)
      tmp_div = tmp_div / 3
      if tmp_div % 3 != 0 then
        div_arr.push(tmp_div)
        break
      end
    } 
  end
}
top_arr.sort!
div_arr.sort!

0.upto(div - 1) {|i|
  (div_arr.length - 1).downto(0) {|j|
    if top_arr[i] % div_arr[j] == 0 then
      top_arr[i] = top_arr[i] / div_arr[j]
      div_arr.delete_at(j)
    end
  }
  answer = answer * top_arr[i]
}
print ("#{answer}\n")