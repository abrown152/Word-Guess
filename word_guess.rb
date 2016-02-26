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


def include_in_word
    if letter_array.include?(user_letter) == true
      puts "You guessed correctly!"
      #Enter code that changes the dash to the letter the user guessed right heeere
        if word == PET
          word_pet
        elsif word == HUT
          word_hut
        elsif word == CAT
          word_cat
        elsif word == DOG
          word_dog
        end

    else
      puts "#{user_letter} is not included in the word!"
      #remove on of the roses
      puts "\nLetters Guessed:\n"
      puts letters_guessed.join    # need to do something with letters_guessed first yo... #of letters user has already guessed.
      puts "\nPlease choose a letter and press enter!"
      user_letter = gets.chomp.upcase
      puts "You selected #{user_letter}."
      include_in_guessed
    end
  end

 def word_pet
  if user_letter == "E"
    #replace index 1 in letter_array with "E"
  elsif user_letter == "P"
    #replace index 0 in letter_array with "P"
  elsif user_letter == "T"
    #replace index 2 in letter_array with "T"
  end
  puts "\nLetters Guessed:\n"
  puts letters_guessed.join    # need to do something with letters_guessed first yo... #of letters user has already guessed.
  puts "\nPlease choose a letter and press enter!"
  user_letter = gets.chomp.upcase
  puts "You selected #{user_letter}."
  include_in_guessed
end

def word_hut
  if user_letter == "U"
   #replace index 1 in letter_array with "U"
  elsif user_letter == "H"
    #replace index 0 in letter_array with "H"
  elsif user_letter == "T"
    #replace index 2 in letter_array with "T"
  end
  puts "\nLetters Guessed:\n"
  puts letters_guessed.join    # need to do something with letters_guessed first yo... #of letters user has already guessed.
  puts "\nPlease choose a letter and press enter!"
  user_letter = gets.chomp.upcase
  puts "You selected #{user_letter}."
  include_in_guessed
end

def word_dog
  if user_letter == "O"
   #replace index 1 in letter_array with "O"
  elsif user_letter == "D"
    #replace index 0 in letter_array with "D"
  elsif user_letter == "G"
    #replace index 2 in letter_array with "G"
  end
  puts "\nLetters Guessed:\n"
  puts letters_guessed.join    # need to do something with letters_guessed first yo... #of letters user has already guessed.
  puts "\nPlease choose a letter and press enter!"
  user_letter = gets.chomp.upcase
  puts "You selected #{user_letter}."
  include_in_guessed
end

def word_cat
  if user_letter == "A"
   #replace index 1 in letter_array with "A"
  elsif user_letter == "C"
    #replace index 0 in letter_array with "C"
  elsif user_letter == "T"
    #replace index 2 in letter_array with "T"
  end
  puts "\nLetters Guessed:\n"
  puts letters_guessed.join    # need to do something with letters_guessed first yo... #of letters user has already guessed.
  puts "\nPlease choose a letter and press enter!"
  user_letter = gets.chomp.upcase
  puts "You selected #{user_letter}."
  include_in_guessed
end

def include_in_guessed
  while letters_guessed.include?(user_letter) == true
    puts "You already guessed that letter!"
    puts "\nLetters Guessed:\n"
    puts letters_guessed.join    # need to do something with letters_guessed first yo... #of letters user has already guessed.
    puts "\nPlease choose a letter and press enter!"
    user_letter = gets.chomp.upcase
    puts "You selected #{user_letter}."
  end
  puts letters_guessed
  letters_guessed << user_letter    #Adds the letter user guessed to the array
    include_in_word
end

puts "\nLetters Guessed:\n"
puts letters_guessed.join    # need to do something with letters_guessed first yo... #of letters user has already guessed.
puts "\nPlease choose a letter and press enter!"
user_letter = gets.chomp.upcase
puts "You selected #{user_letter}."
include_in_guessed

ter

#can use a while loop or until loop ************* no method needed probably
#look up next and break(exit manually) -flow control inside of loops, skipping iterations and exiting the loop when we need to
#loop until finished == true????





# Parentheses are optional in function and method definitions with no arguments
#def hiImFunction
#  puts ':)'
#end

# Parentheses are optional when calling functions and methods without arguments
#hiImFunction
