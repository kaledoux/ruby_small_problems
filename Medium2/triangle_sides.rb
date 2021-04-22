# A triangle is classified as follows:
#
#     equilateral All 3 sides are of equal length
#     isosceles 2 sides are of equal length, while the 3rd is different
#     scalene All 3 sides are of different length
#
# To be a valid triangle, the sum of the lengths of the two shortest sides must
# be greater than the length of the longest side, and all sides must have lengths
# greater than 0: if either of these conditions is not satisfied, the triangle is
# invalid.
#
# Write a method that takes the lengths of the 3 sides of a triangle as arguments,
# and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending
# on whether the triangle is equilateral, isosceles, scalene, or invalid.
#
# Examples:
#
# triangle(3, 3, 3) == :equilateral
# triangle(3, 3, 1.5) == :isosceles
# triangle(3, 4, 5) == :scalene
# triangle(0, 3, 3) == :invalid
# triangle(3, 1, 1) == :invalid
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - integer (3)
# > Output:
#   - symbol
# > Requirements:
#   - must take 3 integers
#     > integers must be >= 0
#     > can be floats
#   - use three integers as measurements of each side of a triangle
#
# > Rules:
#   - classifications of result based on measurements of sides:
#     > :triangle == greatest side < lesser 2 sides && 1,2,3 > 0
#     > :equilateral == 3 sides are == && :triange
#     > :isosceles == 2 sides ==, 3rd different && :triangle
#     > :scalene == 3 sides different && :triangle
#     > :invalid == !:triangle
#
# Examples:
# p triangle(3, 3, 3) == :equilateral
# p triangle(3, 3, 1.5) == :isosceles
# p triangle(3, 4, 5) == :scalene
# p triangle(0, 3, 3) == :invalid
# p triangle(3, 1, 1) == :invalid
#
# Data Structures:
# create method for each possble classification
# in method each number is assigned to a side
#   > (a, b, c) >> side1 = a, side2 = b, side3 = c
#   perform boolean check on associated values
# in triangle method, reference each to match a symbol output
#
# Algorithm:
# > Pseudo:
# START
# DEFINE triangle?(a, b, c)
#   SET comp_array = [a, b, c]
#   RETURN false is comp_array.include?(0)
#   SET comp_array.sort greatest value to least
#   RETURN false if comp_array[1] + comp_array[2] <= comp_array[0]
#   RETURN true
# END
#
# DEFINE equilateral?(a, b, c)
#     return false if triangle?(a, b, c)
#     return false unless a == b == c
#     true
#   end
#
# Code with Intent:
require 'pry'

def triangle?(a, b, c)
  comp_array = [a, b, c]
  return false if comp_array.include?(0)
  comp_array.sort! { |a, b| b <=> a }
  return false if comp_array[1] + comp_array[2] <= comp_array[0]
  true
end

def equilateral?(a, b, c)
  return false unless triangle?(a, b, c)
  return false unless a == b && b == c
  true
end

def isosceles?(a, b, c)
  return false unless triangle?(a, b, c)
  if a == b && c != a
    true
  elsif a == c && b != a
    true
  elsif b == c && a != b
    true
  else
    false
  end
end

def scalene?(a, b, c)
  return false unless triangle?(a, b, c)
  return false unless a != b && a != c && b != c
  true
end

def invalid?(a, b, c)
  return true unless triangle?(a, b, c)
end

def triangle(a, b, c)
  return :invalid unless triangle?(a, b, c)
  if equilateral?(a, b, c)
    :equilateral
  elsif isosceles?(a, b, c)
    :isosceles
  elsif scalene?(a, b, c)
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 3)
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 3, 1.5)
p triangle(3, 4, 5) == :scalene
p triangle(3, 4, 5)
p triangle(0, 3, 3) == :invalid
p triangle(0, 3, 3)
p triangle(3, 1, 1) == :invalid
p triangle(3, 1, 1)
