require_relative './persons/teacher'
require_relative './persons/student'
require_relative './persons/person'
require_relative './persons/rental'
require_relative './persons/book'
require_relative './persons/classroom'

mid_class = Classroom.new('Midclass')

lily = Person.new(12, 'lily', parent_permission: false)

student_lily = Student.new(mid_class, lily.age, lily.name, parent_permission: false)
student_lily.add_classroom = mid_class

fantasy1 = Book.new('The curse child', 'J.K.Rowling')
fantasy2 = Book.new('Twilight saga', 'Stephenie Meyer')

lily.add_rental(fantasy1, '2023-01-11')
lily.add_rental(fantasy2, '2023-01-11')

puts mid_class.students
puts lily.rents
puts fantasy1.rents
