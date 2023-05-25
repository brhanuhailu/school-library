require_relative './persons/rental'

describe Rental do
    describe '#initialize' do
        it 'should create a new rental' do
        rental = Rental.new(1, 1, 1, 1)
        expect(rental).to be_an_instance_of(Rental)
        end
    end
    
    describe '#id' do
        it 'should return the id of the rental' do
        rental = Rental.new(1, 1, 1, 1)
        expect(rental.id).to eql(1)
        end
    end
    
    describe '#book_id' do
        it 'should return the book_id of the rental' do
        rental = Rental.new(1, 1, 1, 1)
        expect(rental.book_id).to eql(1)
        end
    end
    
    describe '#student_id' do
        it 'should return the student_id of the rental' do
        rental = Rental.new(1, 1, 1, 1)
        expect(rental.student_id).to eql(1)
        end
    end
    
    describe '#teacher_id' do
        it 'should return the teacher_id of the rental' do
        rental = Rental.new(1, 1, 1, 1)
        expect(rental.teacher_id).to eql(1)
        end
    end
end