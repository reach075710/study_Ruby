#set
input = gets.chomp.to_f
nontax_price = (input / 1.08).to_i
answer = ':('

#main

def chk(i,input)
  if i * 1.08 >= input && i * 1.08 < input + 1 then
    print("#{i}\n")
    exit
  end
end

nontax_price.upto(nontax_price + 1) do |i|
  chk(i,input)
end

print ("#{answer}\n")