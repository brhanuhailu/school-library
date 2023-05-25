require_relative '../decorator/capitalize_decorator'
require_relative '../decorator/trimmer_decorator'
require_relative '../persons/person'
require 'rspec'


describe CapitalizeDecorator do
  context 'when initializing' do
    before(:each) do
      @person = Person.new(17, 'maximilianus')
      @decorator = CapitalizeDecorator.new(@person)
    end

    it 'should return the correct name' do
      expect(@decorator.correct_name).to eq 'Maximilianus'
    end
  end
end
