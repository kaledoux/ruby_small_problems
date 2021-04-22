# Take a look at the following code:
#
# name = 'Bob'
# save_name = name
# name = 'Alice'
# puts name, save_name
# What does this code print out? Think about it for a moment before continuing.
#
# If you said that code printed
#
# Alice
# Bob
# you are 100% correct, and the answer should come as no surprise.
# Now, let's look at something a bit different:
#
# name = 'Bob'
# save_name = name
# name.upcase!
# puts name, save_name
# What does this print out? Can you explain these results?
#
# This code will print out
# BOB
# BOB
# The reason for this is as follows. When the variable name is set to the string
# 'Bob,' a string object is created and name references this object. When save_name
# is assigned to name, it references the same object that name is currently referencing,
# in this case, the string object 'bob'. When name calls the method upcase!, the
# method acts desctrively on the object name references, in this case, changing
# the string object 'Bob' to 'BOB'. The object id does not change, and neither does
# the the reference from save_name to this object. So, when name and save_name are called
# they both display the altered object.
