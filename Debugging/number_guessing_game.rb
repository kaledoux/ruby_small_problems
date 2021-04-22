# A friend of yours wrote a number guessing game.
# The first version he shows you picks a random number between 1 and a provided
# maximum number and offers you a given number of attempts to guess it.
#
# However, when you try it, you notice that it's not working as expected.
# Run the code and observe its behavior.
# Can you figure out what is wrong?
#
def valid_integer?(string)
 string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
 winning_number = (1..max_number).to_a.sample
 attempts = 0

 loop do
   attempts += 1
   break if attempts > max_attempts

   input = nil
   until valid_integer?(input)
     print 'Make a guess: '
     input = gets.chomp
   end

   guess = input.to_i

   if guess == winning_number
     puts 'Yes! You win.'
   else
     puts 'Nope. Too small.' if guess < winning_number
     puts 'Nope. Too big.'   if guess > winning_number

     # Try again:
     guess_number(max_number, max_attempts)
   end
 end
end

guess_number(10, 3)

# The recursive call to guess_number is the root of the issue. If the winning_number
# is not guessed on the first attempt, the method is called again, recursively.
# However, at the start of the method, the winning_number is reset and the attempts
# counter is set to 0.
# This will cause the program to loop infinitely until the user guesses the winning_number.
