require_relative './decorator/trimmer_decorator'

describe TrimmerDecorator do
  describe '#trim' do
    it 'should trim the string' do
      string = ' string '
      expect(TrimmerDecorator.new(string).trim).to eql('string')
    end
  end
end
