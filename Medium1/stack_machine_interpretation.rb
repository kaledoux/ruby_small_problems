# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - dependent on argument
# > Requirements:
#   - create a method that functions as a miniature stack-and-register program
#     > stack is created (initialized as empty array)
#     > register is created (initialized as 0) always uses integer values
#     > in method commands that frame interactions with stack and reg:
#       - n Place a value n in the "register". Do not modify the stack.
#       - PUSH Push the register value on to the stack. Leave the value in the register.
#       - ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
#       - SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
#       - MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
#       - DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
#       - MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
#       - POP Remove the topmost item from the stack and place in register
#       - PRINT Print the register value
#   - arguments passed as single line strings
#     > multiple commands can be contained in one string
#     > each command must be processed sequentially
#
# > Rules:
#   - outputs is only visible with PRINT command
#   - all programs passed will be valid
#     > no incorrect spellings, or commands that will error out
#   - all operations are integer operations
#   - only integers will be passed in argument
#
# Examples:
# p minilang('PRINT')
# # 0
# p minilang('5 PUSH 3 MULT PRINT')
# # 15
# p minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8
# p minilang('5 PUSH POP PRINT')
# # 5
# p minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7
# p minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6
# p minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12
# p minilang('-3 PUSH 5 SUB PRINT')
# # 8
# p minilang('6 PUSH')
# # (nothing printed; no PRINT commands)
#
# Data Structures:
# create a method to check if value is an integer
#   item.to_i.to_s == item
# take string and create an array
#
# create variable register = 0
# create variable stack = []
# iterate through new array (mixed integers and stings)
# if conditional for int / string array element
#   if int:
#     - int gets added to register
#   else
#     case element
#     when 'PUSH' then stack << register
#     when 'ADD' then register += stack.pop
#     when 'SUB' then register -= stack.pop
#     when 'MULT' then register *= stack.pop
#     when 'DIV' then register /= stack.pop
#     when 'MOD' then register % stack.pop
#     when 'POP' then register = stack.pop
#     when 'PRINT' then puts register
#     end
#   end
# end
#
# Algorithm:
# > Pseudo:
# START program
#   DEFINE is_string_int?(string)
#     RETURN string.to_i.to_s == string
#   END
#   DEFINE minilang(command_string)
#     SET command_array = command_string.split
#     ITERATE through command_array.each do |command|
#       IF command.is_string_int?
#         register = command.to_i
#       ELSE
#         case command
#         when 'PUSH' then stack << register
#         when 'ADD' then register += stack.pop
#         when 'SUB' then register -= stack.pop
#         when 'MULT' then register *= stack.pop
#         when 'DIV' then register /= stack.pop
#         when 'MOD' then register % stack.pop
#         when 'POP' then register = stack.pop
#         when 'PRINT' then puts register
#         end
#       END conditional
#     END iteration
#   END definition
# END program
#
# Code with Intent:

def is_string_int?(string)
  string.to_i.to_s == string
end

# def minilang(command_string)
#   command_array = command_string.split
#   register = 0
#   stack = []
#
#   command_array.each do |command|
#     if is_string_int?(command)
#       register = command.to_i
#     else
#       case command
#       when 'PUSH' then stack << register
#       when 'ADD' then register += stack.pop
#       when 'SUB' then register -= stack.pop
#       when 'MULT' then register *= stack.pop
#       when 'DIV' then register /= stack.pop
#       when 'MOD' then register %= stack.pop
#       when 'POP' then register = stack.pop
#       when 'PRINT' then puts register
#       end
#     end
#   end
# end

# attempt to refactor to not return values, returns nil instead of command_array

def minilang(command_string)
  command_array = command_string.split
  register = 0
  stack = []
  counter = 0
  until counter > command_array.size do
    if is_string_int?(command_array[counter])
      register = command_array[counter].to_i
    else
      case command_array[counter]
      when 'PUSH' then stack << register
      when 'ADD' then register += stack.pop
      when 'SUB' then register -= stack.pop
      when 'MULT' then register *= stack.pop
      when 'DIV' then register /= stack.pop
      when 'MOD' then register %= stack.pop
      when 'POP' then register = stack.pop
      when 'PRINT' then puts register
      end
    end
    counter += 1
  end
end

# can be refactored to include a case for integer conversion w/o condtional
# def minilang(command_string)
#   command_array = command_string.split
#   register = 0
#   stack = []
#
#   command_array.each do |command|
#       case command
#       when 'PUSH' then stack << register
#       when 'ADD' then register += stack.pop
#       when 'SUB' then register -= stack.pop
#       when 'MULT' then register *= stack.pop
#       when 'DIV' then register /= stack.pop
#       when 'MOD' then register %= stack.pop
#       when 'POP' then register = stack.pop
#       when 'PRINT' then puts register
#       else register = command.to_i
#       end
#     end
#   end
# end

p minilang('PRINT')
p minilang('5 PUSH 3 MULT PRINT')
p minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
p minilang('5 PUSH POP PRINT')
p minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
p minilang('3 PUSH PUSH 7 DIV MULT PRINT')
p minilang('4 PUSH PUSH 7 MOD MULT PRINT')
p minilang('-3 PUSH 5 SUB PRINT')
p minilang('6 PUSH')
