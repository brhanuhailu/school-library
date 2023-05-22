require_relative './persons/teacher'
require_relative './persons/student'
require_relative './persons/person'
require_relative './persons/rental'
require_relative './persons/book'
require_relative './persons/classroom'

mid_class = Classroom.new('Midclass')

brhanu = Person.new(12, 'brhanu', parent_permission: false)

student_brhanu = Student.new(mid_class, brhanu.age, brhanu.name, parent_permission: false)
student_brhanu.add_classroom = mid_class

fantasy1 = Book.new('Information science', 'brhanu hailu')
fantasy2 = Book.new('child mind set', 'johon Meyer')

brhanu.add_rental(fantasy1, '2023-01-11')
brhanu.add_rental(fantasy2, '2023-01-11')

puts mid_class.students
puts brhanu.rents
puts fantasy1.rents
