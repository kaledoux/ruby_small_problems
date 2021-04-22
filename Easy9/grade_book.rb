# Write a method that determines the mean (average) of the three scores passed
# to it, and returns the letter value associated with that grade.
#
# Numerical Score Letter 	Grade
# 90 <= score <= 100 	'A'
# 80 <= score < 90 	'B'
# 70 <= score < 80 	'C'
# 60 <= score < 70 	'D'
# 0 <= score < 60 	'F'
#
# Tested values are all between 0 and 100.
# There is no need to check for negative values or values greater than 100.
#
# Example:
#
# get_grade(95, 90, 93) == "A"
# get_grade(50, 50, 95) == "D"
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - three integers
# > Output:
#   - string
# > Requirements:
#   - must take three integers as argument
#     > integers will be 0 <= int <= 100
#   - must calculate average of three scores
#   - uses average score to return a letter grade
#
# > Rules:
#   -
# Examples:
# p get_grade(95, 90, 93) == "A"
# p get_grade(50, 50, 95) == "D"
#
# Data Structures:
# create a variable assigned to the average of the three integers (1 + 2 + 3 / 3)
# use the score to check against a case statement for ouput
#
# Algorithm:
# > Pseudo:
# START
# DEFINE get_grade(int1, int2, int3)
#   SET score = product of int1, int2, int3 divided by 3
#   CHECK score against CASE
#   CASE score
#   WHEN 90 <= score <= 100 THEN	'A'
#   WHEN 80 <= score < 90 THEN	'B'
#   WHEN 70 <= score < 80 THEN	'C'
#   WHEN 60 <= score < 70 THEN	'D'
#   WHEN 0 <= score < 60 THEN	'F'
#   END
# END
#
# Code with Intent:

def get_grade(int1, int2, int3)
  score = (int1 + int2 + int3) / 3
  if score <= 100 && score >= 90
    'A'
  elsif score < 90 && score >= 80
    'B'
  elsif score < 80 && score >= 70
    'C'
  elsif score < 70 && score >= 60
    'D'
  else
    'F'
  end
end

# refactor to use a case statement, instead of using dual conditionals, you can
# achieve the same result by using a range!
def get_grade(int1, int2, int3)
  score = (int1 + int2 + int3) / 3
  case score
  when 90..100 then 'A'
  when 80..89 then 'B'
  when 70..79 then 'C'
  when 60..69 then 'D'
  else 'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(95, 90, 93)
p get_grade(50, 50, 95) == "D"
p get_grade(50, 50, 95)
