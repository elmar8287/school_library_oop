require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'
require_relative 'book'
require_relative 'classroom'

class App
  def initialize
    @people = []
    @books = []
    @rentals = []
    @class = Classroom.new('Grade 5')
  end

  def run
    print 'Welcome to libriary'
    sleep 0.6
    menu
  end

  def menu
    puts
    puts 'Please choose from menu'
    puts '1 - Show all books'
    puts '2 - Show all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - Show all rentals for a given person id'
    puts '7 - Exit'
    option = gets.chomp
    get_option option
  end

  def get_option(input)
    case input
    when '1'
      list_all_books
    when '2'
      list_all_people
    when '3'
      create_a_person
    when '4'
      create_a_book
    when '5'
      create_a_rental
    when '6'
      list_rentals_by_person_id
    when '7'
      puts 'You have exited from app!'
    else
      puts 'Please enter a number between 1 and 7'
    end
  end
end