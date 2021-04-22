#
#
# You have a bank of switches before you, numbered from 1 to n.
# Each switch is connected to exactly one light that is initially off.
# You walk down the row of switches and toggle every one of them.
# You go back to the beginning, and on this second pass,
# you toggle switches 2, 4, 6, and so on. On the third pass,
# you go back again to the beginning and toggle switches 3, 6, 9, and so on.
# You repeat this process and keep going until you have been through n
# repetitions.
#
# Write a method that takes one argument, the total number of switches,
# and returns an Array that identifies which lights are on after n
# repetitions.
#
# Example with n = 5 lights:
#
#     round 1: every light is turned on
#     round 2: lights 2 and 4 are now off; 1, 3, 5 are on
#     round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
#     round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
#     round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
#
# The result is that 2 lights are left on, lights 1 and 4.
# The return value is [1, 4].
#
# With 10 lights, 3 lights are left on: lights 1, 4, and 9.
# The return value is [1, 4, 9].
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - one integer
# > Output:
#   - one array, with integer elements
# > Requirements:
#   - must take one integer
#     > integer is >= 1
#     > upper limit?
#   - uses argument to set upper limit of toggling process
#     > toggle == if on, then off | if off, then on
#     > there are n lights, each round the lights corresponding to different
#       multiples are toggled
#     > 1st round => multiples of 1, 2nd round => multi of 2, 3rd round => mult of 3 etc.
#     > there are n rounds
#   - must output an array with values toggled 'on'
#
# > Rules:
#   - lights have two states 'on' and 'off'
#   - state must be toggled if when selected
#
# Examples:
# switch_lights(5) == [1, 4]
# switch_lights(10) == [1, 4, 9]
#
# Data Structures:
# create method to toggle stored value state of lights_hash
#   if value == 'on' then change to 'off' etc
# use n to create a hash with integer keys 1 - n
#   needs default value of 'off'
# create method to iterate thrugh hash and change values based on multiple
#   1.upto n |num|
#     each_key in lights_hash
#     if divisible by num, toggle the state
#   create array to hold final values
#     each_pair
#     if value == 'on' add it to the array
#   return the array
#
# Algorithm:
# > Pseudo:
# START
# DEFINE create_hash(n)
#   SET new_hash = Hash.new('off')
#   FOR 1 upto n
#     SET new_hash[num] = 'off'
#   END
#   new_hash
# END
#
# DEFINE toggle_state(state)
#   case state
#   when 'on' then 'off'
#   when 'off' then 'on'
#   end
# END
#
# DEFINE switch_lights(lights)
#   lights_hash = create_hash(lights)
#   1.upto(lights) do |num|
#     lights_hash.each_pair do |key, value|
#       lights_hash[key] = toggle_state(value)if key % num == 0
#     end
#   end
#   SET lights_on_array =[]
#   FOR each_pair in lights_hash
#     IF value == 'on'
#       ADD key to lights_on_array
#     END
#   END
#   RETURN lights_on_array
#
# Code with Intent:

def create_hash(n)
  new_hash = Hash.new
  1.upto(n) do |num|
    new_hash[num] = 'off'
  end
  new_hash
end

def toggle_state(state)
  case state
  when 'off' then 'on'
  when 'on' then 'off'
  end
end

def switch_lights(number_of_lights)
  lights_hash = create_hash(number_of_lights)
  1.upto(number_of_lights) do |num|
    lights_hash.each_pair do |light, state|
      lights_hash[light] = toggle_state(state) if light % num == 0
    end
  end
  lights_on_array = []
  lights_off_array = []
  lights_hash.each_pair do |light, state|
    state == 'on' ? lights_on_array << light : lights_off_array << light
  end
  # use text output here in conjunction with the two arrays to print results
  # for which lights are on and which are off
  lights_on_array
end

p switch_lights(5) == [1, 4]
p switch_lights(5)
p switch_lights(10) == [1, 4, 9]
p switch_lights(10)
p switch_lights(1000)
p switch_lights(10000)
