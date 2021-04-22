# Write a program that reads the content of a text file and then prints the
# longest sentence in the file based on number of words.
# Sentences may end with periods (.), exclamation points (!), or question
# marks (?). Any sequence of characters that are not spaces or sentence-ending
# characters should be treated as a word.
# You should also print the number of words in the longest sentence.
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - text file
# > Output:
#   - string (longest sentence based on words)
#   - integer (length of longest sentence)
# > Requirements:
#   - must be able to take and read a text file
#   - must find the longest sentence in the text file
#     > sentences end with (.), (!), or (?) (sentence delimiters)
#     > any sequence of chars that are not spaces or sentence ending chars
#       should be treated as a word (spaces delimit words)
#     > tracks longest sentence in the document
#
# > Rules:
#   - must return two items:
#     > the longest sentence (as a string)
#     > the number of words in the longest sentence
#
# Examples:
# See Website
#
# Data Structures:
# To start, the program needs to be able to import a separate file.
# Once the file is imported, the file needs to be read.
# There also needs to be a method created that will handle the selection of the
# longest sentence:
#   split text by sentence delimiters (. or ! or ?) create an array
#   create a varaible to hold the current_longest_sentence
#   iterate through each sentence and count the words
#     using spaces as delimiters
#     if the size of sentence is greater than the size of current_longest_sentence
#       save the sentence as the new current_longest_sentence
#   at the end of the method return 2 things:
#   current_longest_sentence
#   and current_longest_sentence.size
#
# Algorithm:
# > Pseudo:
# START program
# IMPORT text file
#   SET text = File.open(/Users/Kyle/LS/RB101/Small_Problems/Medium2/test_text1.rb)
#   SET text_lines = text.read.split(/[.!?]/)
#   SET current_longest_sentence = ''
#   ITERATE through text_lines.each do |line|
#     FIND size of line
#     IF line.size > current_longest_sentence.size
#       current_longest_sentence = line
#     END
#   RETURN current_longest_sentence
#   RETURN current_longest_sentence.size
# END
#
# Code with Intent:
text = File.open('test_text1.txt')
text2 = File.open('test_text2.txt')
text_lines = text.read.split(/[.!?]/)
text_lines2 = text2.read.split(/[.!?]/)

def find_word_count(sentence)
  sentence.split(' ').size
end
def find_longest_sentence(sentence_array)
  longest_sentence = ''
  sentence_array.each do |line|
    if find_word_count(line) > find_word_count(longest_sentence)
      longest_sentence = line
    end
  end
  longest_sentence
end

current_longest_sentence = ''
current_longest_sentence = find_longest_sentence(text_lines)
puts  current_longest_sentence
puts find_word_count(current_longest_sentence)

current_longest_sentence = ''
current_longest_sentence = find_longest_sentence(text_lines2)
puts  current_longest_sentence
puts find_word_count(current_longest_sentence)
