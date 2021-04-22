# What will the following code print, and why?
# Don't run the code until you have tried to answer.
#
# array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
# array2 = []
# array1.each { |value| array2 << value }
# array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
# puts array2
#
# This will print the following
# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppo
# This happens because the values that are added to array1 are each individual
# string objects. These same objects are referenced when the values of the
# same name are shoveled into array 2. When the second each block operates on
# the values contained in array1, it is modifying the same objects that array2's values
# are referencing. So, the changes are reflected in array2 as well.
