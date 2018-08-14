# Our first job is to build a hand of 10 letters for the user. To do so, add a method called draw_letters in adagrams.rb. This method should have the following properties:
#
# No parameters
# Returns an array of ten strings
# Each string should contain exactly one letter
# These represent the hand of letters that the player has drawn
# The letters should be randomly drawn from a pool of letters
# This letter pool should reflect the distribution of letters as described in the table below
# There are only 2 available C letters, so draw_letters cannot ever return more than 2 Cs
# Since there are 12 Es but only 1 Z, it should be 12 times as likely for the user to draw an E as a Z
# Invoking this method should not change the pool of letters
# Imagine that the user returns their hand to the pool before drawing new letters

def draw_letters()
  letter_bag = ["A", "A", "A", "A", "A", "A", "A", "A", "A", "B", "B", "C", "C", "D", "D", "D", "D", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "F", "F", "G", "G", "G", "H", "H", "I", "I", "I", "I", "I", "I", "I", "I", "I", "J", "K", "L", "L", "L", "L", "M", "M", "N", "N", "N", "N", "N", "N", "O", "O", "O", "O", "O", "O", "O", "O", "P", "P", "Q", "R", "R", "R", "R", "R", "R", "S", "S", "S", "S", "T", "T", "T", "T", "T", "T", "U", "U", "U", "U", "V", "V", "W", "W", "X", "Y", "Y", "Z"]

  ten_letters = letter_bag.sample(10)

  return ten_letters
end

# puts "Here are your letters: #{draw_letters}"

# puts "Give us a word from your letters: "
# user_input = gets.chomp.to_s.upcase

def uses_available_letters?(input, letters_in_hand)

  # letters_in_hand.split(//)
  checking = input.split(//)
# puts checking.include?("D")
  letters_in_hand.each do |letter|
    unless !(checking.include?(letter))
      return true
    else
      return false
    end
  end
end

 # uses_available_letters?(user_input, draw_letters)
