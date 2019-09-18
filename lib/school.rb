require "pry"


class School
    attr_accessor :roster

    def initialize(school_name)
        @school = school_name
        @roster = Hash.new {|h, k| h[k] = []}
    end

    def add_student(student_name, grade)
        @roster[grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each_value { |students|
        students.sort!
        }
    end

end
