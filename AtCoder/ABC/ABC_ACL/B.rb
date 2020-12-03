# Set
a,b,c,d = gets.chomp.split(" ").map(&:to_i)
answer = "Y"


# Main
if ( a > d ) || ( c > b )
  answer = "No"  
else
  answer = "Yes"
end

print ("#{answer}\n")