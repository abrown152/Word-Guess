word_array = ["DOG", "CAT", "PET", "HUT"]
word = word_array.sample              #chooses a random word
letter_array = word.split("")         #splits the random word's letter into an array
                                        #string as collection???
puts word

dash_array = [ " _ ", " _ ", " _ "]

letters_guessed = []

#The animation goes here....
                    # \ here is start of an escape sequence with n being a new line, so \ \ is an actual backslash!!!
puts "\n
 (@)(@)(@)(@)(@)
    \\ \\ | / /
      _\\|/_
     |_____|
      |   |
      |___| "         # \ is an escape sequence...\ is starting an escape sequence that escapes to a \
#this prints out the dash array
puts dash_array.join

puts "\nPlease choose a letter and press enter!"
  user_letter = gets.chomp.upcase

puts "You selected #{user_letter}."


puts "Letters Guessed:"
puts letters_guessed.join    # need to do something with letters_guessed first yo... #of letters user has already guessed.

#def include_in_guessed
  if letters_guessed.include?(user_letter) == true
    puts "You already guessed that letter! Try again."
  else
 letters_guessed << user_letter    #Adds the letter user guessed to the array
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

# Parentheses are optional in function and method definitions with no arguments
def hiImFunction
  puts ':)'
end

# Parentheses are optional when calling functions and methods without arguments
hiImFunction

#look up recursion ^_^
