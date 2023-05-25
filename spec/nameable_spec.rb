require_relative '../nameable'

describe Nameable do
  describe '#initialize' do
    it 'should create an instance of nameable' do
      nameable = Nameable.new
      expect(nameable).to be_an_instance_of(Nameable)
    end
  end
end
