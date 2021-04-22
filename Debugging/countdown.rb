# Our countdown to launch isn't behaving as expected. Why?
# Change the code so that our program successfully counts down from 10 to 1.
#
# # def decrease(counter)
# #   counter -= 1
# # end
# #
# # counter = 10
# #
# # 10.times do
# #   puts counter
# #   decrease(counter)
# # end
# #
# # puts 'LAUNCH!'
#
# fixed
# def decrease(counter)
#   counter -= 1
# end
#
# counter = 10
#
# 10.times do
#   puts counter
#   counter -= 1
# end
#
# puts 'LAUNCH!'

# The original code is not able to count down from 10 because the decrease method
# cannot access and modify the original object referenced by counter. It can only
# make use of an inner scope variable which itself cannot modify the integer object
# referenced by the original object, counter.

# can also be fixed by changing the loop to reassign the variable counter, each
# iteration

# def decrease(counter)
#   counter - 1
# end
#
# counter = 10
#
# 10.times do
#   puts counter
#   counter = decrease(counter)
# end
#
# puts 'LAUNCH!'

# refactor to remove repitition of 10
def decrease(counter)
  counter -= 1
end

counter = 10

while counter > 0 do
  puts counter
  counter -= 1
end

puts 'LAUNCH!'
