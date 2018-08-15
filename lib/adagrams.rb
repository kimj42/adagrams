# chooses 10 letters randomly from the letter bag
def draw_letters()
  letter_bag = ["A", "A", "A", "A", "A", "A", "A", "A", "A", "B", "B", "C", "C", "D", "D", "D", "D", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "F", "F", "G", "G", "G", "H", "H", "I", "I", "I", "I", "I", "I", "I", "I", "I", "J", "K", "L", "L", "L", "L", "M", "M", "N", "N", "N", "N", "N", "N", "O", "O", "O", "O", "O", "O", "O", "O", "P", "P", "Q", "R", "R", "R", "R", "R", "R", "S", "S", "S", "S", "T", "T", "T", "T", "T", "T", "U", "U", "U", "U", "V", "V", "W", "W", "X", "Y", "Y", "Z"]

  # randomly selects the letters
  ten_letters = letter_bag.sample(10)

  return ten_letters
end

# checks to see if adagram that was created
# includes drawn letters only
def uses_available_letters?(input, letters_in_hand)

  # takes word and puts it into an array
  adagram = input.split(//)

  # checks each letter against drawn letters
  # to see if they are included
  adagram.each do |letter|
    return false unless letters_in_hand.include?(letter)
  end

  return true
end
