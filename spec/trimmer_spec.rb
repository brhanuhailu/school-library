require_relative '../decorator/trimmer_decorator'
require_relative '../persons/person'

describe TrimDecorator do
  context 'when initializing' do
    before(:each) do
      @person = Person.new(22, 'maximilianus')
      @trimmer = TrimDecorator.new(@person)
    end

    it 'should return the trimmed name' do
      expect(@trimmer.correct_name).to eq 'maximilian'
    end
  end
end
