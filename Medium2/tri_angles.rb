# A triangle is classified as follows:
#
#     right One angle of the triangle is a right angle (90 degrees)
#     acute All 3 angles of the triangle are less than 90 degrees
#     obtuse One angle is greater than 90 degrees.
#
# To be a valid triangle, the sum of the angles must be exactly 180 degrees,
# and all angles must be greater than 0: if either of these conditions is
# not satisfied, the triangle is invalid.
#
# Write a method that takes the 3 angles of a triangle as arguments, and returns
# a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle
# is a right, acute, obtuse, or invalid triangle.
#
# You may assume integer valued angles so you don't have to worry about floating
# point errors. You may also assume that the arguments are specified in degrees.
#
# Examples:
#
# triangle(60, 70, 50) == :acute
# triangle(30, 90, 60) == :right
# triangle(120, 50, 10) == :obtuse
# triangle(0, 90, 90) == :invalid
# triangle(50, 50, 50) == :invalid
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - integers (3)
# > Output:
#   - symbol
# > Requirements:
#   - must take three integers as arguments
#     > integer will be >= 0
#     > given in degrees (no conversion)
#   - must analyze arguments and analyze the type of triangle
#     > :triangle => sides == 180 && sides > 0
#     > :right => :triangle && 1 side == 90
#     > :acute => :triangle && sides < 90 (each side)
#     > :obtuse => :triangle && 1 side > 90
#
# > Rules:
#   - must return symbol corresponding to appropriate triangle classification
#   - returns :invalid if not a valid triangle
#
# Examples:
# p triangle(60, 70, 50) == :acute
# p triangle(30, 90, 60) == :right
# p triangle(120, 50, 10) == :obtuse
# p triangle(0, 90, 90) == :invalid
# p triangle(50, 50, 50) == :invalid
#
# Data Structures:
# take three arguments and create an array
# use methods on the array to isolate target values (min, max, etc)
# use conditional/case to return appropriate symbols
#
# Algorithm:
# > Pseudo:
# START
# DEFINE triangle(a, b, c)
#   SET angles = [a, b, c]
#   CASE angles
#   WHEN angles INCLUDES 0 OR angles SUM != 180
#     RETURN :invalid
#   WHEN angles MAX value == 90
#     RETURN :right
#   WHEN angles MAX value < 90
#     RETURN :acute
#   ELSE
#     RETURN :obtuse
#   END
# END
#
# Code with Intent:
# def triangle(a, b, c)
#   angles = [a, b, c]
#   if angles.include?(0) || angles.sum != 180
#     :invalid
#   elsif angles.max == 90
#     :right
#   elsif angles.max < 90
#     :acute
#   else
#     :obtuse
#   end
# end

# refactor to include more collection specific methods && a case statement

def triangle(side1, side2, side3)
  angles = [side1, side2, side3]
  case
  when angles.include?(0), angles.reduce(:+) != 180
    :invalid
  when angles.any? { |side| side == 90 }
    :right
  when angles.all? { |side| side < 90}
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(60, 70, 50)
p triangle(30, 90, 60) == :right
p triangle(30, 90, 60)
p triangle(120, 50, 10) == :obtuse
p triangle(120, 50, 10)
p triangle(0, 90, 90) == :invalid
p triangle(0, 90, 90)
p triangle(50, 50, 50) == :invalid
p triangle(50, 50, 50)
