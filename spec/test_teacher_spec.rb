require_relative '../classes/teacher'

describe Teacher do
  context 'creating a Teacher' do
    teacher = Teacher.new('Math', 22, 'Mustafa')

    it "Should return 'Mustafa' as a teacher name" do
      puts teacher.name
      expect(teacher.name).to eq 'Mustafa'
    end

    it "Should return '22' as a teacher age" do
      expect(teacher.age).to eq 22
    end

    it "Should return 'Math' as a teacher specialization" do
      expect(teacher.specialization).to eq 'Math'
    end

    it "can_use_service method from teacher class should return 'true'" do
      expect(teacher.can_use_service?).to eq true
    end
  end
end
