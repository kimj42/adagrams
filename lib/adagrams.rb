# chooses 10 letters randomly from the letter bag
# require 'minitest/spec'
# require 'minitest/autorun'
# require 'pry'

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

    # check for repeated letters more than in drawn letters
    if letters_in_hand.include?(letter)
      letters_in_hand.delete(letter)
    end
  end

  return true
end

def score_word(word)
   score_chart =
   {
     "A" => 1, "E" => 1, "I" => 1, "O" => 1, "U" => 1, "L" => 1, "N" => 1, "R" => 1, "S" => 1, "T" => 1, "D" => 2, "G" => 2, "B" => 3, "C" => 3, "M" => 3, "P" => 3, "F" => 4, "H" => 4, "V" => 4, "W" => 4, "Y" => 4, "K" => 5, "J" => 8, "X" => 8, "Q" => 10, "Z" => 10
   }
   #Find the sum of letters passed into the method
   total = 0
   #split up the word and put into an array to iterate
   #make all letters caps
   to_arr = word.upcase.split('')
   to_arr.each do |character|
     total += score_chart[character]

   end
     return total
end
 # final_score = score_word("")
 puts "#{final_score}"
