loop do 

    num1 = rand(0..50)
    num2 = rand(0..50)

    sum = num1 + num2

    print "what is #{num1} + #{num2}? "
    ans = gets.chomp.to_i

    if ans == sum
        puts "congratulations you got the right answer!"
        break
    else
        puts "Sorry that's incorrect, try again"
    end
end

    