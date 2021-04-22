# Create a simple tip calculator.
# The program should prompt for a bill amount and a tip rate.
# The program must compute the tip and then display both the tip and the total
# amount of the bill.
#
# Example:
#
# What is the bill? 200
# What is the tip percentage? 15
#
# The tip is $30.0
# The total is $230.0
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - Two integers
# > Output:
#   - Two strings containing floats
# > Requirements:
#   - The program needs to get two pieces of info from the user, bill amount and tip rate
#   - The program needs to calculate the tip total and the total bill amount
# > Rules:
#   - The program takes user inputs in the form of integers
#   - The program must display two calculated values as output
#
# Examples:
# What is the bill? 200
# What is the tip percentage? 15
#
# The tip is $30.0
# The total is $230.0
#
# Data Structures:
# The program starts by getting the user to enter two integers. These values are must
# be converted from strings to floats. The floats are then used to calculate values
# for total and tip. These values must then be displayed inside strings.
#
# Algorithm:
# > Pseudo:
# DEFINE method calculate_tip(bill, percent)
#   bill * percent
# END method def
#
# DEFINE method calulcate_total(bill, tip)
#   bill + tip
# END method def
#
# START program
# PRINT 'Let\'s calculate the tip and total due for a nice meal!'
# PROMPT 'What is the amount of the bill?'
# SET bill_amount = user input
# CONVERT bill_amount to float
# PROMPT 'What is the tip percentage?'
# SET tip_percent = user input
# CONVERT tip_percent to float
#
# SET tip = calculate_tip(bill_amount, tip_percent)
# SET total = calculate_total(bill_amount, tip)
#
# PRINT "The tip is #{tip}"
# PRINT "The total is #{total}"
#
# Code with Intent:

def calculate_tip(bill, percent)
  bill * (percent / 100)
end

def calculate_total(bill, tip)
  bill + tip
end

puts 'Let\'s calculate the tip and total due for a nice meal!'
puts 'What is the amount of the bill?'
bill_amount = gets.chomp.to_f
puts 'What is the tip percentage?'
tip_percent = gets.chomp.to_f

tip = calculate_tip(bill_amount, tip_percent)
total = calculate_total(bill_amount, tip)

puts "The tip due is: $#{format("%.2f", tip)}"
puts "The total due is: $#{format("%.2f", total)}"
