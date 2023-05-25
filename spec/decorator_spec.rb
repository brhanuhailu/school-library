require_relative '../decorator/base'
require_relative '../persons/person'

describe Decorator do
  context 'when initializing' do
    before(:each) do
      @person = Person.new(22, 'maximilianus')
      @decorator = Decorator.new(@person)
    end

    it 'should return the correct name' do
      expect(@decorator.correct_name).to eq 'maximilianus'
    end
  end
end
