class Student

  def initialize(age, grade)
    @age = age
    @grade = grade
  end

  def better_grade_than?(student)
    puts "Well Done!" if self.grade > student.grade
  end

  protected

  def grade
    @grade
  end
end

bob = Student.new(19, 100)
steve = Student.new(21, 97)

puts bob.better_grade_than?(steve)