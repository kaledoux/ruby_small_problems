# Write a method that takes an Array as an argument, and reverses its elements in
# place; that is, mutate the Array passed into this method. The return value
# should be the same Array object.
#
# You may not use Array#reverse or Array#reverse!.
#
# Examples:
#
# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1]
# list == [4, 3, 2, 1]
# list.object_id == result.object_id
#
# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"]
# list == ["c", "d", "e", "b", "a"]
#
# list = ['abc']
# reverse!(list) == ["abc"]
# list == ["abc"]
#
# list = []
# reverse!(list) == []
# list == []
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - array
# > Output:
#   - array
# > Requirements:
#   - must take an array containing elements comprised of numbers or strings
#   - the array can be blank
#   - the return value should be the same array, with the order of elements reversed
# > Rules:
#   - the Array#reverse Array#reverse! methods cannot be used
#   - string must be modified in place
#
# Examples:
# SEE ABOVE
#
# Data Structures:
# the array passed as an argument must be modified in place so a method must be
# used that will mutate the caller.
# one approach could be to iterate through the array a number of times equal to the
# length of the array and shift/append the element at the given index
# ^^^^^^ this method will not work; it is effectively recreating the same loop^^^
# another way could be to use a second array to store the values of the first which
# are pulled out in order and prepended. then add these values back into the first
# array
#
# Algorithm:
# > Pseudo:
# START
# DEFINE reverse!(array)
#   FOR array.length - 1 times (-1 to account for total elements vs index numbering)
#     REMOVE the first value from array
#     APPEND this value to array
#   END
# END
#
# Code with Intent:

# def reverse!(array)
#   storage_array = []
#   array.size.times {storage_array.prepend(array.shift)}
#   storage_array.map {|element| array << element}
#   array
# end

def reverse!(array)
  first_index = 0
  second_index = -1
  while first_index < array.size / 2
    array[first_index], array[second_index] = array[second_index], array[first_index]
    first_index += 1
    second_index -= 1
  end
  array
end


# def reverse!(array)
#   (array.length) - 1.times {array.append(array.shift)}
#   array
# end

p list = [1,2,3,4]
p result = reverse!(list)
p result
p list
p list.object_id == result.object_id

p list = %w(a b e d c)
p reverse!(list)
p list == ["c", "d", "e", "b", "a"]

p list = ['abc']
p reverse!(list)
p list == ["abc"]

p list = []
p reverse!(list) == []
p list == []
