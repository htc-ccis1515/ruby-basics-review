##############################################################################
# Make a method to do a pretty display of a date.  The method should take
# three input values: the number of the month (1-12), the day and the year.
# It should return back a string in the format of January 1, 1999.
#
# Use an array inside this method to hold the months of the year.
# Remember that the first position of an array is 0 and the first month (not the
# 0th) of the year is January.
#
# Remember that you must first define the method, then call the method.
#
# Setup a short script to:
# - Ask for each value & convert them to numbers
# - If the enter a value outside of a reasonable range, show an error message
#   and ask for the value again.
# - Pass those 3 values into your method
# - use the output from the method to display the date
#############################################################################
def show_date month_of_year, day_of_week
  month = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
  day = dom
  return month[month_of_year-1] + day[day_of_week].to_s
end

puts 'enter a number for the month of the year :'
num = gets.chomp.to_i
puts 'enter in a number for day of the month: '
dom = gets.chomp.to_i
month = show_date num dom
puts 'That makes the days date' + month + '.'


##############################################################################
# Write a method to sum (add up, or total) the numbers from an array.  The method
# should take in an array of any length (including 0) as input and return back
# the sum of all the numbers in the array.  If the array is empty, return 0.
#
# Test your method, then write the script below.
#
# Write a short script to:
# - Ask the person for 5 numbers (Use a loop to do this, don't duplicate code.)
# - Add the numbers into an array as they are entered
# - (Don't forget to convert them to numbers!)
# - Show the list of numbers that were entered
# - Use the method you made to sum the numbers
# - Display the total in a nice message
#############################################################################
def sum_numbers list
  total = 0
  list.each do |num|
      total = num + total
  end
  return total
end

numbers = [1,2,3]
no_numbers = []
puts "The total of " + numbers.to_s + " is " + sum_numbers(numbers).to_s
puts "The total of " + no_numbers.to_s + " is " + sum_numbers(no_numbers).to_s

list = []
while list.length < 5
  puts "Enter a number: "
  num = gets.chomp.to_i
  list.push num
end
puts "The total of your number " + list.to_s + " is " + sum_numbers(list).to_s



##############################################################################
# Make a method to determine whether or not the first and last letter of a
# word are the same letter.  Return true from the method if they are and false
# otherwise.
#
# Write a test script for this method that asks a user to enter words until
# they have entered 'Q' to quit.  After they enter the word, tell them the word
# they entered, then say if the first and last letter are the same in a nice
# message.  (Don't just say true or false)
#############################################################################
def is_first_last_same word
  return true
end


word = ''
while word != '' # Using upcase here makes this check case insesitive both 'Q' and 'q' will stop
  puts 'enter a word and i\'ll tell you if the first and last letter are the same.'
  word = gets.chomp
  if is_first_last_same word
    puts 'The first and last letters of ' + word + ' are the same.'
  else
    puts 'Nope, the first and last letter ' + word + ' are not the same.'
  end
end
##############################################################################
# Make a method convert a number of inches to feet.  Remember that 1 foot is
# equal to 12 inches.
#
# Write a test script for this method that asks a user to enter a number to
# convert until they have entered 0 to quit.  After they enter the number
# display a nice message that tells them how many inches they entered and
# how many feet that converts to.
#############################################################################
def inches_to_feet inches
  foot =  inches.to_i / 12
    return foot
  end

  puts "Put in a number in inches."
  inch = gets.chomp
  foot = inches_to_feet inch
  puts inch.to_s + " inches is equal to " +  foot.to_s + " feet."
##############################################################################
# Make a method convert a number of points (out of 100) to a letter grade.
# Use a 10 point scale: 90 and up is an A, 80-90 is a B, etc.  The method should
# return the letter grade.
#
# Write a test script for this method that asks a user to enter a number to
# convert until they have entered a number less than 0 to quit.  After they
# enter the number display a nice message that tells them both the number of
# points and the corresponding letter grade.
#############################################################################
def letter_grade points
  grade = 'F'
  if points >= 90
    return 'A'
  elsif points >= 80
    return 'B'
    if points >= 70
      return 'C'
    elsif points >=60
      return 'D'
      if points < 60
        return 'F'
      end
  return grade
end

points = 100
while points >= 0
  puts 'Enter the number of points and I\'ll give you the letter grade.(entering a negative number will stop.)'
  points = gets.chomp.to_i
  if points >= 0
    grade = letter_grade points
    puts points.to_s + 'is a ' + grade + '.'
  end
end
