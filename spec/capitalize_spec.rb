require_relative '../decorator/capitlize_decorator'
require_relative '../decorator/trimmer_decorator'
require_relative '../persons/person'

describe CapitlizeDecorator do
  describe '#capitalize' do
    it 'should capitalize the first letter of a string' do
      string = 'string'
      expect(CapitlizeDecorator.new(string).capitalize).to eql('String')
    end
  end
end
