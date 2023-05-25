require_relative '.persons/student'

describe Student do
    describe '#initialize' do
        it 'should create a new student' do
        student = Student.new(1, 'name', 20)
        expect(student).to be_an_instance_of(Student)
        end
    end
    
    describe '#id' do
        it 'should return the id of the student' do
        student = Student.new(1, 'name', 20)
        expect(student.id).to eql(1)
        end
    end
    
    describe '#name' do
        it 'should return the name of the student' do
        student = Student.new(1, 'name', 20)
        expect(student.name).to eql('name')
        end
    end
    
    describe '#age' do
        it 'should return the age of the student' do
        student = Student.new(1, 'name', 20)
        expect(student.age).to eql(20)
        end
    end

    describe '#parent_permission' do
        it 'should return the parent_permission of the student' do
        student = Student.new(1, 'name', 20)
        expect(student.parent_permission).to eql(true)
        end
    end

    describe '#classroom' do
        it 'should return the classroom of the student' do
        student = Student.new(1, 'name', 20)
        expect(student.classroom).to eql(nil)
        end
    end

    describe '#classroom=' do
        it 'should set the classroom of the student' do
        student = Student.new(1, 'name', 20)
        student.classroom = 'classroom'
        expect(student.classroom).to eql('classroom')
        end
    end

    describe '#add_classroom' do
        it 'should add the classroom of the student' do
        student = Student.new(1, 'name', 20)
        student.add_classroom('classroom')
        expect(student.classroom).to eql('classroom')
        end
    end
    end