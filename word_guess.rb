word_array = ["DOG", "CAT", "PET", "HUT"]
word = word_array.sample              #chooses a random word
letter_array = word.split("")         #splits the random word's letter into an array

puts word

dash_array = [ " _ ", " _ ", " _ "]

letters_guessed = []

#The animation goes here....
puts "\n
 (@)(@)(@)(@)(@)
    \ \ | / /
      _\|/_
     |_____|
      |   |
      |___| "         #why is \ registering as a command within this string????
#this prints out the dash array
puts dash_array.join

puts "\nPlease choose a letter and press enter!"
  user_letter = gets.chomp.upcase

puts "You selected #{user_letter}."

puts "Letters Guessed:"
puts letters_guessed.join                        #of letters user has already guessed.

#def include_in_guessed
  if letters_guessed.include?(user_letter) == true
    puts "You already guessed that letter! Try again."
  else
#    include_in_word
#  end
#end

#def include_in_word
    if letter_array.include?(user_letter) == false
      puts "#{user_letter} is not included in the word!"
    else
      puts "You guessed correctly!"
    #Enter code that changes the dash to the letter the user guessed right heeere
    end
  end

  letters_guessed << user_letter    #Adds the letter user guessed to the array
