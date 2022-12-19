# Problem: Write a program that will ask a user for an input of a word or multiple
# words and give back the number of characters. Spaces should not be counted as
# a character.
# Input: a string containing one or more words
# Output: a string telling you how many characters are in the input.
#       Explicit Requirements:
#       - Require a word or words from user
#       - Count the string and return the count
#       - Ignore spaces.
#
#       Implicit Requirements:
#       - punctuation marks are counted as characters.
#
# Example:
# 'walk' => 4
# 'walk with me' => 10
#
# Data Structures: array
#
# Algorithm:
# - Ask user for input string containing word or multiple words
# - get user input and assign to variable words
# - convert words to array, then back to string, and count words using count
# and assign to count variable
#
# Code:

puts "Please write word or multiple words:"
user_word = gets.chomp
counter = user_word.split(' ').join.size
puts "There are #{counter} characters in '#{user_word}'"
