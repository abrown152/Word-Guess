word_array = ["DOG", "CAT", "PET", "HUT"]
word = word_array.sample              #chooses a random word
letter_array = word.split("")         #splits the random word's letter into an array

dash_array = [ " _ ", " _ ", " _ "]

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
