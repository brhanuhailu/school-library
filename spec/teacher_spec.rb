require_relative '../persons/teacher'

describe Teacher do
  context 'when initializing' do
    before(:each) do
      @teacher = Teacher.new(33, 30, 'Information Science', name: 'Alex')
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

    it 'should have parent_permission' do
      expect(@teacher.parent_permission).to be_truthy
    end

    it 'should be able to use service' do
      expect(@teacher.can_use_services?).to be_truthy
    end

    it 'should change to hash format' do
      hash = {
        age: 30,
        name: 'Alex',
        parent_permission: true,
        type: 'Teacher',
        id: 33,
        specialization: 'Computer Science'
      }
      expect(@teacher.to_hash).to eql(hash)
    end
  end
end
