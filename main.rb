require_relative 'app'
require 'pry'

OPTION = Option.new

def select_option
  puts "\n Select an option using the number:
    1. List of all books
    2. List of all persons
    3. Create a person
    4. Create a book
    5. Create a rental
    6. List of all rentals
    7. Exit"

  gets.chomp.to_i
end

def choices(num)
  case num
  when 1
    OPTION.list_books
  when 2
    OPTION.list_persons
  when 3
    OPTION.create_persons
  when 4
    OPTION.create_books
  when 5
    OPTION.create_rental
  when 6
    OPTION.list_rentals
  else
    puts ' please type a number between 1-7'
  end
end

def main
  num = select_option
  return puts 'Thank you for using the app' if num == 7
  
  choices(num)
  main
end

print "Welcome to School Library app \n"

main
