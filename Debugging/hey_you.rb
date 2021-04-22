# String#upcase! is a destructive method, so why does this code print HEY you
# instead of HEY YOU ?
# Modify the code so that it produces the expected output.
#
# def shout_out_to(name)
#   name.chars.each { |c| c.upcase! }
#
#   puts 'HEY ' + name
# end
#
# shout_out_to('you') # expected: 'HEY YOU'
#
# This method is creating an array from the original name; each letter is a
# separate element in the array. When the each method is called on this array
# each element is reassigned to an upcase string object, but this is only changing
# the stored value of the objects inside this array. This method does nothing
# to mutate the string object passed in to the method and referenced by the inner
# scope variable, name.

def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you')
