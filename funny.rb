t = gets.to_i
t.times do
    s = gets.chomp.split("").collect(&:ord)
    n = s.length
    r = s.reverse
    is_funny = true;
    for i in 1...n
        if (s[i]-s[i-1]).abs != (r[i]-r[i-1]).abs 
            is_funny = false
            break
        end
    end
    if is_funny == true
        puts "Funny"
    else 
        puts "Not Funny"
    end
end
