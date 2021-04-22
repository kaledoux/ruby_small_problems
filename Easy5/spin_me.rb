You are given a method named spin_me that takes a string as an argument
and returns a string that contains the same words, but with each word's
characters reversed. Given the method's implementation, will the
returned string be the same object as the one passed in as an argument
or a different object?

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

This method will return a different object. There are not methods inside the
spin_me method that are modifying the original string argument. The reference to
the original object is passed in and the placeholder variable str is also assigned
reference to this object, however, the split method creates a separate array object,
and the other methods act to change this object, so the changes are not reflected
in the original object.
