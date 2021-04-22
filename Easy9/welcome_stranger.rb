# Create a method that takes 2 arguments, an array and a hash. The array will
# contain 2 or more elements that, when combined with adjoining spaces, will
# produce a person's name.
# The hash will contain two keys, :title and :occupation,
# and the appropriate values. Your method should return a greeting that uses the
# person's full name, and mentions the person's title.
#
# Example:
#
# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - one array, one hash
# > Output:
#   - string with array and hash interpolated
# > Requirements:
#   - must take two arguments
#     > the array must have two or more arguments
#     > the hash must have two keys, title and occupation with the two associated
#       values
#   - must return a string with the array and the hash values interpolated therein
#
# > Rules:
#   - greeting string must use the full name (all values in array) and the persons
#     title (first key in the hash) (does this mean that the second hash is not req?)
#   - do we need defaut values for the array/hash in case there are not enough args?
#
# Examples:
# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
#
# Data Structures:
# create a name variable by joining the array args with spaces (string)
# create a variable for title by interpolating the hash values into a string
# return a string with the two variables interpolated therein
#
# Algorithm:
# > Pseudo:
# START
# DEFINE greetings(name_array, title_hash)
#   SET name = name_array.join(' ')
#   SET title = values of array joined into a string
#   RETURN "Hello, #{name}! Nice to have a #{title} around."
# END
# END
#
# Code with Intent:

# def greetings(name_array, title_hash)
#   name = name_array.join(' ')
#   title = title_hash.values.join(' ')
#   "Hello, #{name}! Nice to have a #{title} around."
# end

# further exploration
def greetings(name, status)
  "Hello, #{name.join(' ')}! Nice to have a #{status.values.join(' ')} around."
end
puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
