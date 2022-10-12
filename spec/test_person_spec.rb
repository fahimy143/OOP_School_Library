require_relative '../classes/person'

describe Person do
  context 'creating a Person' do
    person = Person.new(34, 'Natasha')

    it "It should return '34' as the Person age " do
      expect(person.age).to eq 34
    end

    it "It should return 'Natasha' as the Person name " do
      expect(person.name).to eq 'Natasha'
    end

    it 'can_use_services of Person class should return true or false' do
      expect(person.can_use_services?).to eq true
    end

    it "It should return 'Natasha' from correct_name? " do
      expect(person.correct_name).to eq 'Natasha'
    end
  end
end
