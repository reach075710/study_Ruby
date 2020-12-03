n = gets.chomp.to_i
tmp_equation = 0
slope = 0
intercept = 0

answer = "No"

a_arr = []
b_arr = []

0.upto(n - 1) do |i|
  a_arr[i],b_arr[i] = gets.chomp.split(" ").map(&:to_f)
end

0.upto(n - 3) do |i|
  (i + 1).upto(n - 2) do |j|
    if a_arr[i] == a_arr[j] then
      chk_prm = 1
    elsif b_arr[i] == b_arr[j] then
      chk_prm = 2
    else
      slope = ((b_arr[j] - b_arr[i]) / (a_arr[j] - a_arr[i])).to_f
      intercept = (b_arr[i] - (a_arr[i] * slope)).to_f
      chk_prm = 0
    end

    # p chk_prm
    (j + 1).upto(n - 1) do |k|
      if chk_prm == 1 then
        if a_arr[k] == a_arr[i]
          answer = "Yes"
          # print ("a,b=#{a_arr[k]},#{b_arr[k]}\n")
          print ("#{answer}\n")
          exit
        end
      elsif chk_prm == 2
        if b_arr[k] == b_arr[i]
          answer = "Yes"
          # print ("a,b=#{a_arr[k]},#{b_arr[k]}\n")
          print ("#{answer}\n")
          exit
        end
      else
        if b_arr[k] == (slope * a_arr[k] + intercept).to_f then
          answer = "Yes"
          # print ("a,b=#{a_arr[k]},#{b_arr[k]}\n")
          print ("#{answer}\n")
          exit
        end
      end
    end
  end
end

print ("#{answer}\n")