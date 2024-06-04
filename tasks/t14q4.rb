ans = rand(1..100)

guesses = []

loop do
    print "Enter your guess between 1 and 100: "
    guess = gets.chomp.to_i
    guesses << guess
    if guess == ans
        puts "You guessed #{ans}, that is the correct answer"
        puts "you guessed #{guesses.length} times"
        break
    else
        puts "incorrect try again"
    end
end