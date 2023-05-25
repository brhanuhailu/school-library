require_relative '../persons/person'
require_relative '../persons/book'
require_relative '../persons/rental'

describe Person do
  context 'when initializing' do
    before(:each) do
      @person = Person.new(17, 'Milli', parent_permission: false)
    end
    it 'id should not be nil' do
      expect(@person.id).not_to be_nil
    end
    it 'should have age' do
      expect(@person.age).to eq 17
    end
    it 'should have name' do
      expect(@person.name).to eq 'Milli'
    end
    context 'when testing the method' do
      person = Person.new(17, 'Milli')

      it 'Should return the correct name' do
        expect(person.correct_name).to eq 'Milli'
      end

      it 'Should return the correct name' do
        expect(person.send(:of_age?)).to eq false
      end
    end
  end
end
