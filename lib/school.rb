# code here!
class School
    
attr_accessor :school_name, :roster
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student, grade)
        if roster[grade] == nil
            roster[grade] = []
        end
        roster[grade] << student
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted_roster = {}
      roster.each do |grade, students|
        sorted_roster[grade] = students.sort
      end
      sorted_roster
    end
    
end