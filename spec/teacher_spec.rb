require_relative '../persons/teacher'

describe Teacher do
  context 'when initializing' do
    before(:each) do
      @teacher = Teacher.new('Information Science', 30, 'Alex')
    end

    it 'id should not be nil' do
      expect(@teacher.id).not_to be_nil
    end

    it 'should have age' do
      expect(@teacher.age).to eq 30
    end

    it 'should have name' do
      expect(@teacher.name).to eq 'Alex'
    end


    it 'should be able to use service' do
      expect(@teacher.can_use_services?).to be_truthy
    end
  end
end
