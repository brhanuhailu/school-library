require_relative './persons/book'

describe Book do
  describe '#initialize' do
    it 'should create a new book' do
      book = Book.new('title', 'author')
      expect(book).to be_an_instance_of(Book)
    end
  end

  describe '#title' do
    it 'should return the title of the book' do
      book = Book.new('title', 'author')
      expect(book.title).to eql('title')
    end
  end

  describe '#author' do
    it 'should return the author of the book' do
      book = Book.new('title', 'author')
      expect(book.author).to eql('author')
    end
  end
end
