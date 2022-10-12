require_relative '../classes/book'
require_relative '../classes/student'
require_relative '../classes/rental'

describe Book do
  context 'testing the Book class' do
    book = Book.new('Book_name', 'author')
    student1 = Student.new(classroom: 'Maths class', age: '22', id: '222', name: 'Jack')
    rental = Rental.new('2022', book, student1)
    book.add_rental(rental)

    it "Should return  'Book_name' as Book name" do
      expect(book.title).to eq 'Book_name'
    end

    it "Should return  'author' as Book author" do
      expect(book.author).to eq 'author'
    end

    it 'The length of Book.rentals[] should be 2' do
      expect(book.rentals.length).to eq 3
    end
  end
end
