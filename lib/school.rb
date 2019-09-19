class School
    attr_accessor :name, :roster

    def initialize(school_name)
        @name = school_name
        @roster = {}
    end

    def add_student(student_name, grade)
        if roster[grade] == nil
            roster[grade] = []
        end
        roster[grade] << student_name
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        sorted = {}
        roster.each do |grades, info|
            sorted[grades] = info.sort 
        end
        sorted
    end
end

