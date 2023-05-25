require_relative '../persons/book'
require_relative '../persons/person'
require_relative '../persons/rental'
require 'rspec'
require 'date'

describe Book do
  new_book = Book.new('Wole Soyinka', 'Lion and the jewel')
  new_person = Person.new(4, 'Omotayo')
  new_date = '2023-2-25'

  it 'Should display the Book title and author' do
    expect(new_book.title).to eq 'Wole Soyinka'
    expect(new_book.author).to eq 'Lion and the jewel'
  end

  it 'Should be an instance of Rental' do
    new_rental = new_book.add_rental(new_person, new_date)
    expect(new_rental).to be_an_instance_of(Rental)
  end
end
