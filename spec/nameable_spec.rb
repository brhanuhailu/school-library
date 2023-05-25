require_relative './nameable'

describe Nameable do
  describe '#initialize' do
    it 'should create a new nameable' do
      nameable = Nameable.new('name')
      expect(nameable).to be_an_instance_of(Nameable)
    end
  end

  describe '#name' do
    it 'should return the name of the nameable' do
      nameable = Nameable.new('name')
      expect(nameable.name).to eql('name')
    end
  end
end
