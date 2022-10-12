require_relative '../classes/teacher'
require_relative '../classes/book'
require_relative '../classes/rental'

describe Rental do
  context 'creating a Rental' do
    teacher = Teacher.new('Math', 22, 'Mustafa')
    book = Book.new('Lovely man', 'Mustafa')
    rental = Rental.new('28/10/2020', book, teacher)

    it "Should return 'Mustafa' as a rental person name" do
      expect(rental.person.name).to eq 'Mustafa'
    end

    it "Should return 'Lovely man' as a rental book title" do
      expect(rental.book.title).to eq 'Lovely man'
    end

    it "Should return 'Lovely man' as a rental book title" do
      expect(teacher.rentals[0].book.title).to eq 'Lovely man'
    end
  end
end
