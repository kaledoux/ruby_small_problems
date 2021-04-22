# Write a method that counts the number of occurrences of each element
# in a given array.
#
# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]
#
# count_occurrences(vehicles)
# The words in the array are case-sensitive: 'suv' != 'SUV'. `
# Once counted, print each element alongside the number of occurrences.
#
# Expected output:
#
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

def how_many(array)

  count = {}

  array.uniq.each do |type|
    unless count[type]
      count[type] = 0
    end
  end

  array.each do |type|
    count[type] += 1
  end

  count.each do |key, value|
    puts "#{key} ==> #{value}"
  end
end
