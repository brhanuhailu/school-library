require_relative './persons/teacher'

describe Teacher do
    describe '#initialize' do
        it 'should create a new teacher' do
        teacher = Teacher.new(1, 'name', 20)
        expect(teacher).to be_an_instance_of(Teacher)
        end
    end
    
    describe '#id' do
        it 'should return the id of the teacher' do
        teacher = Teacher.new(1, 'name', 20)
        expect(teacher.id).to eql(1)
        end
    end
    
    describe '#name' do
        it 'should return the name of the teacher' do
        teacher = Teacher.new(1, 'name', 20)
        expect(teacher.name).to eql('name')
        end
    end
    
    describe '#age' do
        it 'should return the age of the teacher' do
        teacher = Teacher.new(1, 'name', 20)
        expect(teacher.age).to eql(20)
        end
    end

    describe '#specialization' do
        it 'should return the specialization of the teacher' do
        teacher = Teacher.new(1, 'name', 20)
        expect(teacher.specialization).to eql(nil)
        end
    end

    describe '#specialization=' do
        it 'should set the specialization of the teacher' do
        teacher = Teacher.new(1, 'name', 20)
        teacher.specialization = 'specialization'
        expect(teacher.specialization).to eql('specialization')
        end
    end
end