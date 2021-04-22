# Write a program that will ask for user's name.
# The program will then greet the user.
# If the user writes "name!" then the computer yells back to the user.
#
# Examples
#
# What is your name? Bob
# Hello Bob.
#
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - one string from user
# > Output:
#   - one string
# > Requirements:
#   - program must take user input and use it in output
#   - program must alter output  formatting if input includes '!'
# > Rules:
#   - The input must be a string
#   - If user string ends with !, the output must be in all caps
#
# Examples:
# What is your name? Bob
# Hello Bob.
#
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?
#
# Data Structures:
# The input from the user will be a string. We can scan the string for the presense of the
# ! to check for alteration. Whether altered or not, the output will still be a string.
#
# Algorithm:
# > Pseudo:
# START program
#
# PROMPT 'What is your name?'
# SET user_name = gets.chomp
# CHECK user_name for '!'
# IF user_name includes '!'
#   CONVERT user_name - '!' to all caps
#   PRINT "HELLO #{user_name}...."
# ELSE
#   PRINT "Hello, #{user_name}"
# END conditional
# END program
#
# Code with Intent:

puts 'What is your name?'
user_name = gets.chomp

if user_name.end_with?('!')
  user_name.delete_suffix!('!').upcase!
  puts "HELLO #{user_name}. WHY ARE WE YELLING?"
else
  puts "Hello, #{user_name.capitalize}."
end
