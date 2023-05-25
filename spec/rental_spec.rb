require_relative '../persons/rental'
require_relative '../persons/person'
require_relative '../persons/book'

describe Rental do
  let(:person) { Person.new(22, 'Smith') }
  let(:book) { Book.new('Mathematics', 'Longhorn') }
  let(:rental) { Rental.new('2023/04/10', book, person) }

  context 'when creating a rental for a person or book' do
    it 'should create a book rental' do
      expect(book.rents).to include(rental)
    end

    it 'should create a person rental' do
      expect(person.rents).to include(rental)
    end
  end
end
