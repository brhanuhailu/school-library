require_relative './persons/classroom'

describe Classroom do
  describe '#initialize' do
    it 'should create a new classroom' do
      classroom = Classroom.new('classroom')
      expect(classroom).to be_an_instance_of(Classroom)
    end
  end

  describe '#classroom' do
    it 'should return the label of the classroom' do
      classroom = Classroom.new('classroom')
      expect(classroom.label).to eql('classroom')
    end
  end

  describe '#students' do
    it 'should return the students of the classroom' do
      classroom = Classroom.new('classroom')
      expect(classroom.students).to eql([])
    end
  end
end
