require_relative '../interfaces/nameable'
require_relative '../decorators/capitalize'
require_relative '../decorators/trimmer'

class Person < Nameable
  attr_accessor :name, :id, :age, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true, id: nil)
    super()
    @id = id.nil? ? Random.rand(1...1000) : id
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def export_json
    {
      'name' => @name,
      'age' => @age,
      'parent_permission' => @parent_permission
    }
  end

  def correct_name
    @name
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def add_rental(book, date)
    Rental.new(date, book, self)
  end

  def of_age?
    @age >= 18
  end
end

# person = Person.new(22, 'maximilianus')
# puts person.correct_name
# capitalized_person = CapitalizeDecorator.new(person)
# puts capitalized_person.correct_name
# capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
# puts capitalized_trimmed_person.correct_name
