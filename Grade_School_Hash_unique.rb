class Grade_School
  attr_accessor :level,:student
  def initialize
    @students = Hash.new{|hash,key| hash[key] = []}
  end
  def add(student,level)
    @students[level] << student
    @students[level].sort!
  end
  def student(level)
    print @students[level]
  end
  def grade(level)
    print "Grade:#{level}, Student:#{@students[level]}"
    print @students
  end
end

solution = Grade_School.new()
solution.add('Juan','Grade1')
solution.add('Sam','Grade1')
solution.add('Erika','Grade2')
solution.add('Claudia','Grade2')
solution.student('Grade2')
