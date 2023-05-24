require_relative 'persons/book'
require_relative 'persons/student'
require_relative 'persons/teacher'
require_relative 'persons/rental'
require_relative 'persons/read_data'
require_relative 'persons/save_data'

class Option
  def initialize
    @books = ReadData.new.read_books
    @person = ReadData.new.read_people
    @rents = ReadData.new.read_rentals(ReadData.new.read_books, ReadData.new.read_people)
  end

  def list_books
    puts "There is no book yet! Please create a new book first. \n" if @books.empty?

    @books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
  end

  def list_persons
    puts "There is no person yet! Please create a new person first \n" if @person.empty?
    @person.each do |each|
      puts " [#{each.class}] Name: #{each.name}, ID: #{each.id}, Age: #{each.age}"
    end
  end

  def create_persons
    puts 'Do you want to create a student(1) or a teacher(2)? [Input the number]: '
    type = gets.chomp.to_i

    if [1, 2].include?(type)
      print 'Age: '
      age = gets.chomp.to_i

      print 'Name: '
      name = gets.chomp

      case type
      when 1
        print 'Has parent Permission? [Y/N]: '
        permission = gets.chomp.downcase == 'y'
        people = Student.new(age, name, parent_permission: permission)
      when 2
        print 'Specialization: '
        people = Teacher.new(gets.chomp, age, name)
      end
      @person << people
      puts "Created a Person successfully. \n"
      SaveData.new.save_people(@person)
    else
      puts "Invalid type \n"
    end
  end

  def create_book
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    @books << Book.new(title, author)
    print 'Book created'
    SaveData.new.save_books(@books)
  end

  def create_rental
    puts 'Select a book from the following list by number: '
    @books.each_with_index do |book, i|
      puts "#{i}) Title: #{book.title}, Author: #{book.author}"
    end
    book_num = gets.chomp.to_i.to_i

    puts 'Select a person from the following list by number (not id)'
    @person.each_with_index do |each, i|
      puts "#{i}) [#{each.class}] Name: #{each.name}, ID: #{each.id}, Age: #{each.age}"
    end
    person_num = gets.chomp.to_i.to_i

    print 'Date: '
    date = gets.chomp.to_i

    @rents << Rental.new(date, @person[person_num], @books[book_num])
    print "Rental created successfully \n"
    SaveData.new.save_rentals(@rents, @books, @person)
  end

  def list_rentals
    puts 'Id of the person: '
    person_id = gets.chomp.to_i
    person = @person.find { |p| p.id == person_id }
    if person.nil?
      puts 'Person do not exist'
      return
    end
    puts "Rentals of #{person.name}:"
    person.rents.each do |rental|
      puts "Date: #{rental.date} Book: #{rental.book.title} by #{rental.book.author}"
    end
  end
end
