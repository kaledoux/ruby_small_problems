# Modify the method from the previous exercise so it ignores non-alphabetic characters
# when determining whether it should uppercase or lowercase each letter.
#   The non-alphabetic characters should still be included in the return value;
#   they just don't count when toggling the desired case.
#
# Example:
#
# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
#
# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     need_upper = !need_upper
#   end
#   result
# end
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - string
# > Requirements:
#   - must take a non-empty string and return a new string with alternating capitalization
#   - non-alpha characters do not count in the pattern
# > Rules:
#   - must return new string, not mutate
#   - modify provided method
#
# Examples:
# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
#
# Data Structures:
# the same data structure can be used, except an additional conditional will be added
# to check if the character is alpha or not
#
# Algorithm:
# > Pseudo:
#
# Code with Intent:
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[[:alpha:]]/
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

puts staggered_case('I Love Launch School!')
puts staggered_case('ALL CAPS')
puts staggered_case('ignore 77 the 444 numbers')
