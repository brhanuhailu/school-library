require_relative './persons/person'

describe Person do
    describe '#initialize' do
        it 'should create a new person' do
        person = Person.new(1, 'name', 20)
        expect(person).to be_an_instance_of(Person)
        end
    end
    
    describe '#id' do
        it 'should return the id of the person' do
        person = Person.new(1, 'name', 20)
        expect(person.id).to eql(1)
        end
    end
    
    describe '#name' do
        it 'should return the name of the person' do
        person = Person.new(1, 'name', 20)
        expect(person.name).to eql('name')
        end
    end
    
    describe '#age' do
        it 'should return the age of the person' do
        person = Person.new(1, 'name', 20)
        expect(person.age).to eql(20)
        end
    end
    end