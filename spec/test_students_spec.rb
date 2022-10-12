require_relative '../classes/student'

describe Student do
  context 'creating a Student' do
    student = Student.new(classroom: 'Math', age: 22, id: nil, name: 'Natasha', parent_permission: true)
    it "Should return 'Natasha' as the student name" do
      expect(student.name).to eq 'Natasha'
    end

    it "Should return '22' as the Student age" do
      expect(student.age).to eq 22
    end

    it "Should return '¯\(ツ)/¯' as the student name" do
      expect(student.play_hooky).to eq "¯\(ツ)/¯"
    end
  end
end
