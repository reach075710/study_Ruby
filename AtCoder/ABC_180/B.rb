# Set
n = gets.chomp.to_i
coordinate_arr = gets.chomp.split(" ").map(&:to_i).map(&:abs)
manhattan_len = 0
euclid_len = 0
euclid_len_tmp = 0
chebi_len = 0

# Main
0.upto(n -1) do |i|
  manhattan_len += coordinate_arr[i]
  euclid_len_tmp += (coordinate_arr[i] * coordinate_arr[i])
  chebi_len = coordinate_arr[i] if chebi_len <= coordinate_arr[i]
end

euclid_len = Math.sqrt(euclid_len_tmp)

print ("#{manhattan_len}\n")
print ("#{euclid_len}\n")
print ("#{chebi_len}\n")