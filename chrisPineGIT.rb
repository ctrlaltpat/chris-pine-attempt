=begin

-------Might not use this bit------

  sec = 1.0
  minute = sec * 60
  hour = minute * 60
  day = hour * 24
  week = day * 7
  year = 365

def calcSecsInMins(secs)
  secs * 60.0
end

def calcMinsInHrs(mins)
  mins * 60.0
end
=end

#def display(result)
#    puts sprintf("%.1f",result)
#    return sprintf("%.1f", result) ??
#end

hrsInAYear = 365.25 * 24
minsInAYear = hrsInAYear * 60
minsInADecade = minsInAYear * 10
secsInAYear = minsInAYear * 60

def selectEx
  lineWidth = 70
  puts "Please enter the number of the exercise you wish to see running."
  puts ""
  puts "    " + "---------- Chapter 1 ----------".center(lineWidth)
  puts "(1) " + "How many hours are in a year?".center(lineWidth)
  puts "(2) " + "How many minutes are in a decade?".center(lineWidth)
  puts "(3) " + "How many seconds old are you?".center(lineWidth)
  puts "(4) " + "How many chocolates do you hope to eat in your life?".center(lineWidth)
  puts "(5) " + "If I am 1246 million seconds old, how old am I?".center(lineWidth)
  puts ""
  puts "    " + "---------- Chapter 4 ----------".center(lineWidth)
  puts "(6) " + "Greeter".center(lineWidth)
  puts "(7) " + "Your Favourite Number".center(lineWidth)
  puts ""
  puts "    " + "---------- Chapter 5 ----------".center(lineWidth)
  puts "(8) " + "Angry Boss".center(lineWidth)
  puts "(9) " + "Example Table of Contents".center(lineWidth)
  puts ""
  puts "    " + "---------- Chapter 6 ----------".center(lineWidth)
  puts "(10)" + "99 bottles of..*hiccup*.. beer on the wall...".center(lineWidth)
  puts "(11)" + "DEAF GRANDMA".center(lineWidth)
  puts "(12)" + "DEAF GRANDMA -- EXTENDED".center(lineWidth)
  puts "(13)" + "Leap Years".center(lineWidth)
  puts ""
  puts "    " + "---------- Chapter 7 ----------".center(lineWidth)
  puts "(14)" + "Sorting Time with 'sort'".center(lineWidth)
  puts "(15)" + "Sorting Time without 'sort' (WIP)".center(lineWidth)
  puts "(16)" + "Example Table of Contents #2".center(lineWidth)
  puts ""
  puts "    " + "---------- Chapter 8 ----------".center(lineWidth)
  puts "(17)" + "'englishNumber' Program (I don't like it!)".center(lineWidth)
  puts "(18)" + "Patrick's 'englishNumber' Program >:) (WIP)".center(lineWidth)
  puts "(19)" + "'weddingNumber' Program (WIP)".center(lineWidth)
  puts "(20)" + "Nine Thousand, Nine Hundred and Ninety-Nine Bottles of Beer...".center(lineWidth)
  puts ""
  puts "If you wish to exit the program, enter 'quit'."
end

#------------------------------------------------------------------------
#-----------------------------START OF PROGRAM---------------------------
#------------------------------------------------------------------------
puts ''
puts "Hi! Welcome to Patrick's attempt at Christopher David Pine's exercises from the first 8 chapters of https://pine.fm/LearnToProgram/ ."
puts ''

selectEx
exChoice = ''

loop do
  puts ''
  #puts "Asking for input."
  exChoice = gets.chomp

  case exChoice

  when '1'
    puts ''
    puts "There are #{hrsInAYear} hours in a year!"
    puts ''
    break

  when '2'
    puts ''
    puts "There are #{minsInADecade} minutes in a decade."
    puts ''
    break

  when '3'
    puts ''
    puts "How old are you?"
    loop do
      puts ''
      age = gets.chomp.to_i

      if age != 0
        puts ""
        puts "Your are " + sprintf("%.1f", age * secsInAYear) + " seconds old!"
        puts ''
        break
      else
      puts "Please enter a valid age! e.g. '32'"
      end
    end
    break

  when '4'
    puts "How old are you?"
    lifeExpect = 70
    loop do
      puts ''
      age = gets.chomp.to_i

      if age != 0
        if age >= 70
          puts ''
          puts "It's time to stop eating so much chocolate! No BUTS!!"
          puts ''
          break
        else
        puts ""
        puts "How many chocolates would you eat each day for the rest of your life?"
        puts ''
        loop do
        chocoCount = gets.chomp.to_i

        if chocoCount != 0

          if (chocoCount <= 2 and age <= lifeExpect/2)
            puts ''
            puts "You could hope to eat at least " + ((lifeExpect - age) * 365).to_s + " more chocolates in your life!"
            puts ''
            break
          puts ''
          elsif (chocoCount <= 2 and age >= lifeExpect/2)
            puts ''
            puts "I'd eat a bit less than that if I were you, but you could hope to eat at least " + ((lifeExpect - age) * 365).to_s + " more chocolates in your life."
            break
          else
            puts ''
            puts "Wow! That's too much! If you want live a long and healthy life, please eat less chocolate."
            puts "You may only be able to eat about " + ((lifeExpect - age) * 365).to_s + " more chocolates at this rate. :("
            puts "Limit your daily intake to 1-2 ounces per day."
          puts ''
          break
          end

        else
          puts "Please enter a valid number! e.g. '2'"
        end

        end
        break

      end

      else
      puts "Please enter a valid age! e.g. '32'"
      end
    end
    break

  when '5'
    puts ''
    puts "If you are 1246 million seconds old, you are " + sprintf("%.1f", 1_246_000_000 / secsInAYear) + " years old!"
    puts ''
    puts "You are also " + sprintf("%.1f", 1_246_000_000 / minsInAYear) + " minutes old, or " + sprintf("%.1f", 1_246_000_000 / hrsInAYear) + " hours old, or " + sprintf("%.1f", 1_246_000_000 / 365) + " days old, or " + sprintf("%.1f", 1_246_000_000 / 52) + " weeks old!!"
    puts ''
    break

  when '6' #update for input error
    puts ''
    puts "What is your first name?"
    fName = gets.chomp.downcase.capitalize
    puts "What is your middle name?"
    mName = gets.chomp.downcase.capitalize
    puts "What is your last name?"
    lName = gets.chomp.downcase.capitalize
    puts "Hello #{fName} #{mName} #{lName}! Welcome again to Patrick's attempt at Chris Pine's exercises. He has done these exercises in preparation for his interview at Makers Academy! I hope he was successful."
    break

  when '7' #update for input error (string)
    puts ''
    puts "What is your favourite number?"
    fav = gets.chomp.to_i
    fav += 1
    puts ''
    #puts "Hmmmm, That number is great but I think #{fav} is a bigger and better favourite number!"
    puts "Hmmmm, That number is great but I think " + fav.to_s + " is a bigger and better favourite number!"
    break

  when '8'
    puts ''
    puts "SHOULDN'T YOU BE WORKING??? WHAT THE HELL DO YOU WNAT NOW??!?!?!?"
    reply = gets.chomp
    puts ''
    puts "#{reply.upcase}??!!??? SERIOUSLY?????!?! GET OUT OF MY OFFICE!! YOU'RE FIRED!!!!!!!"
    break

  when '9'
    tocWidth = 60
    puts ''
    puts "Table of Contents".center(tocWidth)
    puts ''
    puts "Chapter 1: Numbers".ljust(tocWidth/2) + "page 1".rjust(tocWidth/2)
    puts "Chapter 2: Letters".ljust(tocWidth/2) + "page 72".rjust(tocWidth/2)
    puts "Chapter 3: Variables".ljust(tocWidth/2) + "page 118".rjust(tocWidth/2)
    puts "Chapter 8: Test".ljust(tocWidth/2) + "page 9000".rjust(tocWidth/2)
    puts ''
    break

  when '10'
    bottles = 99
    while bottles != 2
      puts ''
      puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
      puts "Take one down and pass it around, #{bottles - 1} bottles of beer on the wall."
      bottles -= 1
    end
    while bottles == 2
      puts ''
      puts "2 bottles of beer on the wall, 2 bottles of beer."
      puts "Take one down and pass it around, 1 more bottle of beer on the wall."
      bottles -= 1
    end
    while bottles == 1
      puts ''
      puts "1 bottle of beer on the wall, 1 bottle of beer."
      puts "Take one down and pass it around, no more bottles of beer on the wall."
      bottles -= 1
    end
    puts ''
    puts "No more bottles of beer on the wall, no more bottles of beer."
    puts "Go to the store and buy some more, 99 bottles of beer on the wall."
    break

  when '11'
    puts ''
    puts "Tell your grandmother that you're leaving the house."

    bye = 'bye'
    attempts = 0

    while bye != "BYE" #|| bye != bye.upcase

      bye = gets.chomp
      if bye == "BYE"
        puts ''
        puts "Alright... :( Be Safe."
        puts ''
      elsif bye == bye.upcase #WHAT THE FUCK?
        puts ''
        puts "Grandma: NO, NOT SINCE #{rand(1930..1950)}"
        attempts += 1

        puts "(Try saying 'BYE'.)" if attempts >= 5
        puts ''
      else
        puts ''
        puts "Grandma: HUH?! SPEAK UP, SONNY!"

        attempts += 1

        puts "(Try saying 'BYE'.)" if attempts >= 5
        puts ''

      end
    end
    break

  when '12'
    puts ''
    puts "Tell your grandmother that you're leaving the house."

    bye = 'bye'
    bye_bye_bye = 0
    attempts = 0

    while bye != "BYE"

      while bye_bye_bye != 3

        bye = gets.chomp
        if bye == "BYE"
          puts ''
          puts "....."
          puts ''

          bye_bye_bye += 1

          puts "Alright.... :( Be careful!" if bye_bye_bye == 3

        elsif bye == bye.upcase
          puts ''
          puts "Grandma: NO, NOT SINCE #{rand(1930..1950)}"

          attempts += 1
          bye_bye_bye = 0

          puts "(Try saying 'BYE'.)" if attempts >= 5
          puts ''
        else
          puts ''
          puts "Grandma: HUH?! SPEAK UP, SONNY!"

          attempts += 1
          bye_bye_bye = 0

          puts "(Try saying 'BYE'.)" if attempts >= 5
          puts ''

        end
      end
    end
    break

  when '13'
    puts ''
    puts "Let's count all the leap years between two years of your choice."

    valid_years = Array(1..9999)
    year1 = -1
    year2 = -2

    def get_leap_years(years_to_check)
      push_leap_years = Array.new
      years_to_check.each { |year|
        if (year % 400 == 0 ) || ((year % 4 == 0) && !(year % 100 == 0))
          push_leap_years.push year
        else
        end
      }
      return push_leap_years
    end

    while !(valid_years.include? year1) && !(valid_years.include? year2) && !(year1 < year2)

        puts ''
        puts "Please enter a starting year!"
        year1 = gets.chomp.to_i
        puts ''
        puts "Please enter an ending year!"
        year2 = gets.chomp.to_i

      if (valid_years.include? year1) && (valid_years.include? year2) && (year1 < year2)
        years_to_check = Array(year1..year2)

        leap_years = get_leap_years(years_to_check)

        puts ''
        puts "The leap years between #{year1} and #{year2} are: #{leap_years.join(", ")}."
        puts ''
      else
        puts ''
        puts "Error! Please enter valid years!"
      end
    end

    break

  when '14' #update for input error
    puts ''
    puts "Let's sort some words!"
    words = []
    #words = Array.new
    word = "word"
    puts ''
    puts "Please enter a word!"

    word = gets.chomp.downcase

    while word != ""
      words.push word.capitalize
      puts ''
      puts "Please enter another word. (Just press 'Enter' when you're finished adding words.)"
      word = gets.chomp.downcase
      #puts "Test"
      #puts words.join(", ")
    end

    puts "Here are your words sorted in alphabetical order: "
    puts ''
    puts words.sort.join(" ")
    puts ''

    break

  when '15' #without sort
    puts ''
    puts "This one is difficult! :("

    break

  when '16' #not sure if I did this right
    tocWidth = 60
    chap1 = "Chapter 1: Numbers".ljust(tocWidth/2) + "page 1".rjust(tocWidth/2)
    chap2 = "Chapter 2: Letters".ljust(tocWidth/2) + "page 72".rjust(tocWidth/2)
    chap3 = "Chapter 3: Variables".ljust(tocWidth/2) + "page 118".rjust(tocWidth/2)
    chap8 = "Chapter 8: Test".ljust(tocWidth/2) + "page 9000".rjust(tocWidth/2)

    puts ''
    puts "Table of Contents".center(tocWidth)
    puts ''
    toc2 = [chap1, chap2, chap3, chap8]
    puts toc2
    puts ''

    break

  when '17' #adjust for incorrect input and 'and's
    def englishNumber number
      if number < 0  # No negative numbers.
        return 'Please enter a number that isn\'t negative.'
      end
      if number == 0
        return 'Zero'
      end

      # No more special cases! No more returns!

      numString = ''  # This is the string we will return.

      onesPlace = ['One',     'Two',       'Three',    'Four',     'Five',
                   'Six',     'Seven',     'Eight',    'Nine']
      tensPlace = ['Ten',     'Twenty',    'Thirty',   'Forty',    'Fifty',
                   'Sixty',   'Seventy',   'Eighty',   'Ninety']
      teenagers = ['Eleven',  'Twelve',    'Thirteen', 'Fourteen', 'Fifteen',
                   'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen']

      # "left" is how much of the number we still have left to write out.
      # "write" is the part we are writing out right now.
      # write and left... get it?  :)
      left  = number


      write = left/1000000000000
      left = left - write*1000000000000

      if write > 0
        trillions  = englishNumber write
        numString = numString + trillions + ' Trillion'

        if left > 0
          numString = numString + ' '
        end
      end


      write = left/1000000000
      left = left - write*1000000000

      if write > 0
        billions  = englishNumber write
        numString = numString + billions + ' Billion'

        if left > 0
          numString = numString + ' '
        end
      end


      write = left/1000000
      left = left - write*1000000

      if write > 0
        millions  = englishNumber write
        numString = numString + millions + ' Million'

        if left > 0
          numString = numString + ' '
        end
      end


      write = left/1000
      left = left - write*1000

      if write > 0
        thousands  = englishNumber write
        numString = numString + thousands + ' Thousand'

        if left > 0
          numString = numString + ' '
        end
      end


      write = left/100          # How many hundreds left to write out?
      left  = left - write*100  # Subtract off those hundreds.

      if write > 0
        # Now here's a really sly trick:
        hundreds  = englishNumber write
        numString = numString + hundreds + ' Hundred'
        # That's called "recursion". So what did I just do?
        # I told this method to call itself, but with "write" instead of
        # "number". Remember that "write" is (at the moment) the number of
        # hundreds we have to write out. After we add "hundreds" to
        # "numString", we add the string ' hundred' after it.
        # So, for example, if we originally called englishNumber with
        # 1999 (so "number" = 1999), then at this point "write" would
        # be 19, and "left" would be 99. The laziest thing to do at this
        # point is to have englishNumber write out the 'nineteen' for us,
        # then we write out ' hundred', and then the rest of
        # englishNumber writes out 'ninety-nine'.

        if left > 0
          # So we don't write 'two hundredfifty-one'...
          numString = numString + ' and '
        end
      end

      write = left/10          # How many tens left to write out?
      left  = left - write*10  # Subtract off those tens.

      if write > 0
        if ((write == 1) and (left > 0))
          # Since we can't write "tenty-two" instead of "twelve",
          # we have to make a special exception for these.
          numString = numString + teenagers[left-1]
          # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

          # Since we took care of the digit in the ones place already,
          # we have nothing left to write.
          left = 0
        else
          numString = numString + tensPlace[write-1]
          # The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
        end

        if left > 0
          # So we don't write 'sixtyfour'...
          numString = numString + '-'
        end
      end

      write = left  # How many ones left to write out?
      left  = 0     # Subtract off those ones.

      if write > 0
        numString = numString + onesPlace[write-1]
        # The "-1" is because onesPlace[3] is 'four', not 'three'.
      end

      # Now we just return "numString"...
      numString
    end

    puts ''
    puts "Please enter a number that you wish to change to words."
    puts ''
    reply = gets.chomp.to_i
    result = englishNumber(reply)
    puts result
    puts ''

    break

  when '20'

    def englishNumber number
      if number < 0
        return 'Please enter a number that isn\'t negative.'
      end
      if number == 0
        return 'Zero'
      end

      numString = ''

      onesPlace = ['One',     'Two',       'Three',    'Four',     'Five',
                   'Six',     'Seven',     'Eight',    'Nine']
      tensPlace = ['Ten',     'Twenty',    'Thirty',   'Forty',    'Fifty',
                   'Sixty',   'Seventy',   'Eighty',   'Ninety']
      teenagers = ['Eleven',  'Twelve',    'Thirteen', 'Fourteen', 'Fifteen',
                   'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen']

      left  = number
      write = left/1000
      left = left - write*1000

      if write > 0
        thousands  = englishNumber write
        numString = numString + thousands + ' Thousand'

        if left > 0
          numString = numString + ' '
        end
      end


      write = left/100
      left  = left - write*100

      if write > 0
        hundreds  = englishNumber write
        numString = numString + hundreds + ' Hundred'

        if left > 0
          numString = numString + ' and '
        end
      end

      write = left/10
      left  = left - write*10

      if write > 0
        if ((write == 1) and (left > 0))
          numString = numString + teenagers[left-1]
          left = 0
        else
          numString = numString + tensPlace[write-1]
        end

        if left > 0
          numString = numString + '-'
        end
      end

      write = left
      left  = 0

      if write > 0
        numString = numString + onesPlace[write-1]
        end
      numString
    end

    bottles = 9999
    while bottles != 2
      result = englishNumber(bottles)
      nextResult = englishNumber(bottles - 1)
      puts ''
      puts "#{result} bottles of beer on the wall, #{result} bottles of beer."
      puts "Take one down and pass it around, #{nextResult} bottles of beer on the wall."
      bottles -= 1
    end
    while bottles == 2
      puts ''
      puts "Two bottles of beer on the wall, two bottles of beer."
      puts "Take one down and pass it around, one more bottle of beer on the wall."
      bottles -= 1
    end
    while bottles == 1
      puts ''
      puts "One bottle of beer on the wall, one bottle of beer."
      puts "Take one down and pass it around, no more bottles of beer on the wall."
      bottles -= 1
    end
    puts ''
    puts "No more bottles of beer on the wall, no more bottles of beer."
    puts "Go to the store and buy some more, Nine Thousand, Nine Hundred and Ninety-Nine bottles of beer on the wall."
    break


  when 'quit'
    puts ''
    puts "Thank you for visiting. Bye!"
    #puts "Go to https://ctrlaltpat.com or https://github.com/ctrlaltpat to see more of Patrick's coding adventures."
    puts ''
    break

  else
    puts ''
    puts "Sorry, something went wrong there. I have no idea what to do with #{exChoice}. Please try again."
  end
end



def getage
  puts "What year were you born in?"
  z_age = gets.chomp
  puts "What month were you born in?"
  z_month = gets.chomp
  puts "Which date of #{z_month} were you born?"
  z_date = gets.chomp
end
