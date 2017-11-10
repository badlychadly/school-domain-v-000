class School
  def initialize(name)
    @name = name
    @roster = {}
  end

attr_reader :roster

def add_student(student_name, grade)
   roster[grade] ||= []
   roster[grade] << student_name
 end

def grade(s_grade)
  @roster[s_grade]
end

def sort
   @roster.each { |grade, names| names.sort!}
 end

end
