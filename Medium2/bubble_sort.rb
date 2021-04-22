# Bubble Sort is one of the simplest sorting algorithms available.
# It isn't an efficient algorithm, but it's a great exercise for student developers.
# In this exercise, you will write a method that does a bubble sort of an Array.
#
# A bubble sort works by making multiple passes (iterations) through the Array.
# On each pass, each pair of consecutive elements is compared.
# If the first of the two elements is greater than the second,
# then the two elements are swapped.
# This process is repeated until a complete pass is made without performing
# any swaps; at that point, the Array is completely sorted.
#
# We can stop iterating the first time we make a pass through the array without
# making any swaps; at that point, the entire Array is sorted.
#
# Write a method that takes an Array as an argument, and sorts that Array using
# the bubble sort algorithm as just described. Note that your sort will
# be "in-place"; that is, you will mutate the Array passed as an argument.
# You may assume that the Array contains at least 2 elements.
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - array
# > Output:
#   - array
# > Requirements:
#   - must take an array as arugment
#     > array will contain 5 items (or more? or less?)
#     > array only contains integers
#   - sorts array by ascending value
#     > repeatedly iterates through array and checks if index  > index+1
#       -swaps if true
#   - if no swaps can be made, stops iterating
#
# > Rules:
#   - must mutate array (modify argument array in place)
#
# Examples:
# array = [5, 3]
# p bubble_sort!(array)
# p array == [3, 5]
#
# array = [6, 2, 7, 1, 4]
# p bubble_sort!(array)
# p array == [1, 2, 4, 6, 7]
#
# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# p bubble_sort!(array)
# p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
#
# Data Structures:
# start with the arg array
# loop
#   create variable swaps_made to hold modification state (= 'no')\
#   iterate through array with index
#     if the index value is greater than the value of index + 1
#       swap these two items
#       change state of swaps_made to 'yes'
#   break if swap state is 'no'
#
# Algorithm:
# > Pseudo:
# START
# DEFINE bubble_sort!(array)
#   LOOP DO
#     SET swaps_made = 'no'
#     ITERATE through array with index values
#       IF array[index] > array[index + 1]
#         SET array[index], array[index + 1] = array[index + 1], array[index]
#         SET swaps_made = 'yes'
#       END
#   BREAK IF swaps_made == 'no'
# END
#
# Code with Intent:

# def bubble_sort!(array)
#   loop do
#     swaps_made = 'no'
#     array.each_with_index do |item, index|
#       if item == array.last
#         nil
#       elsif item > array[index + 1]
#         sub1, sub2 = array[index], array[index + 1]
#         array[index] = sub2
#         array[index + 1] = sub1
#         swaps_made = 'yes'
#       end
#     end
#     break if swaps_made == 'no'
#   end
# end

# refactor to include a less bulky loop; make use of 1.upto
def bubble_sort!(array)
  loop do
    swaps_made = 'no'
    1.upto(array.size - 1) do |index|
      if array[index - 1] > array[index]
        array[index -1], array[index] = array[index], array[index - 1]
        swaps_made = 'yes'
      end
    end
  break if swaps_made == 'no'
  end
end


array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
