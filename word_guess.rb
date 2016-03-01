class WordGuess
  def initialize
    @word_array = ["DOG", "CAT", "PET", "HUT"]
    @word = @word_array.sample              #chooses a random word
    @letter_array = @word.split("")         #splits the random word's letter into an array
    @dash_array = [ " _ ", " _ ", " _ "]
    @letters_guessed = []
    @rose_array = ["(@)", "(@)", "(@)", "(@)", "(@)"]
    #@user_letter = user_letter

    puts @word       # Remove this test before final push.


                    # \ here is start of an escape sequence with n being a new line, so \ \ is an actual backslash!!!
    puts "\n
    #{@rose_array.join}
      \\ \\ | / /
        _\\|/_
       |_____|
        |   |
        |___| "         # \ is an escape sequence...\ is starting an escape sequence that escapes to a \
                        #this prints out the dash array
    puts @dash_array.join

    puts "\nPlease choose a letter and press enter!"
    @user_letter = gets.chomp.upcase
    puts "You selected #{@user_letter}."
    @letters_guessed << @user_letter    #Adds the letter user guessed to the array
    include_in_word
  end

def include_in_word
    if @letter_array.include?(@user_letter) == true
      puts "You guessed correctly!"
      #Enter code that changes the dash to the letter the user guessed right heeere
        if @word == "PET"
          word_pet
        elsif @word == "HUT"
          word_hut
        elsif @word == "CAT"
          word_cat
        elsif @word == "DOG"
          word_dog
        end

    else
      puts "#{@user_letter} is not included in the word!"
      @rose_array.delete_at(0)
      puts "\n
      #{@rose_array.join}
        \\ \\ | / /
          _\\|/_
         |_____|
          |   |
          |___| "
      if @rose_array.length == 0
        loser_method
      else
        puts "\nLetters Guessed:\n"
        puts @letters_guessed.join    # need to do something with @letters_guessed first yo... #of letters user has already guessed.
        puts "\nPlease choose a letter and press enter!"
        @user_letter = gets.chomp.upcase
        puts "You selected #{@user_letter}."
        include_in_guessed
      end
    end
  end

 def word_pet
  if @user_letter == "E"
    @dash_array.fill("E", 1..1)
  elsif @user_letter == "P"
    @dash_array.fill("P", 0..0)
  elsif @user_letter == "T"
    @dash_array.fill("T", 2..2)
  end
  puts "\nLetters Guessed:\n"
  puts @letters_guessed.join    # need to do something with @letters_guessed first yo... #of letters user has already guessed.
  puts @dash_array.join
  if @dash_array.include?(" _ ")
    puts "\nPlease choose a letter and press enter!"
    @user_letter = gets.chomp.upcase
    puts "You selected #{@user_letter}."
    include_in_guessed
  else
   winner_method
  end
end

def word_hut
  if @user_letter == "U"
    @dash_array.fill("U", 1..1)
  elsif @user_letter == "H"
    @dash_array.fill("H", 0..0)
  elsif @user_letter == "T"
    @dash_array.fill("T", 2..2)
  end
  puts "\nLetters Guessed:\n"
  puts @letters_guessed.join    # need to do something with @letters_guessed first yo... #of letters user has already guessed.
  puts @dash_array.join
  if @dash_array.include?(" _ ")
    puts "\nPlease choose a letter and press enter!"
    @user_letter = gets.chomp.upcase
    puts "You selected #{@user_letter}."
    include_in_guessed
  else
   winner_method
  end
end

def word_dog
  if @user_letter == "O"
   @dash_array.fill("O", 1..1)
 elsif @user_letter == "D"
   @dash_array.fill("D", 0..0)
  elsif @user_letter == "G"
    @dash_array.fill("G", 2..2)
  end
  puts "\nLetters Guessed:\n"
  puts @letters_guessed.join    # need to do something with @letters_guessed first yo... #of letters user has already guessed.
  puts @dash_array.join
  if @dash_array.include?(" _ ")
    puts "\nPlease choose a letter and press enter!"
    @user_letter = gets.chomp.upcase
    puts "You selected #{@user_letter}."
    include_in_guessed
  else
   winner_method
  end
end

def word_cat
  if @user_letter == "A"
   @dash_array.fill("A", 1..1)
 elsif @user_letter == "C"
   @dash_array.fill("C", 0..0)
  elsif @user_letter == "T"
    @dash_array.fill("T", 2..2)
end
  puts "\nLetters Guessed:\n"
  puts @letters_guessed.join    # need to do something with @letters_guessed first yo... #of letters user has already guessed.
  puts @dash_array.join
  if @dash_array.include?(" _ ")
    puts "\nPlease choose a letter and press enter!"
    @user_letter = gets.chomp.upcase
    puts "You selected #{@user_letter}."
    include_in_guessed
  else
   winner_method
  end
end

def include_in_guessed
  while @letters_guessed.include?(@user_letter) == true
    puts "You already guessed that letter!"
    puts "\nLetters Guessed:\n"
    puts @letters_guessed.join    # need to do something with @letters_guessed first yo... #of letters user has already guessed.
    puts "\nPlease choose a letter and press enter!"
    @user_letter = gets.chomp.upcase
    puts "You selected #{@user_letter}."
  end
  puts @letters_guessed
  @letters_guessed << @user_letter    #Adds the letter user guessed to the array
    include_in_word
end

def winner_method
  puts "YOU WIN!!!^_^"
end

def loser_method
  puts "YOU LOSE!!! -_-"
end


#can use a while loop or until loop ************* no method needed probably
#look up next and break(exit manually) -flow control inside of loops, skipping iterations and exiting the loop when we need to
#loop until finished == true????





# Parentheses are optional in function and method definitions with no arguments
#def hiImFunction
#  puts ':)'
#end

# Parentheses are optional when calling functions and methods without arguments
#hiImFunction
end

WordGuess.new
