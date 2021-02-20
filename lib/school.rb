require 'pry'

class School
    attr_accessor :roster, :grade, :name, :sort
   
    def initialize(name)
        @name = name
        @roster = {}
    end
       
    def add_student(student_name, grade)
        roster[grade] ||= []
        roster[grade] << student_name
    end
    
    def grade(student_grade)
        roster[student_grade]
    end
    
    # def sort
    #     roster.sort.to_h
    # end

    def sort
        sorted = {}
        roster.each do |grade, students|
          sorted[grade] = students.sort
        end
        sorted
      end
      
end
# school = School.new("Queen")
# school.add_student("Joe", 9)
# school.add_student("Tom", 9)
# school.add_student("Brian", 10)
# school.add_student("Tim", 8)


# binding.pry

