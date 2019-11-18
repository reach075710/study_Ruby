a,b,c,d = gets.chomp.split(" ").map(&:to_i)
answer = 0
#main
if ( c >= a && c < b ) then
    if b >= d then
        answer = d - c
    else
        answer = b - c 
    end

elsif ( a >= c && a < d ) then
    if d >= b then
        answer = b - a
    else
        answer = d - a
    end
else
    answer = 0
end

print ("#{answer}\n")