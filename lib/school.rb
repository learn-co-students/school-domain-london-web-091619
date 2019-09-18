# code here!
require "pry"

class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = { }
    end
    
    def add_student(name, grade)
        if roster[grade] == nil
            roster[grade] = []
            end
        roster[grade] << name
    end

    def grade(grade)
        return @roster[grade]
    end

    def sort
        sorted_list = {}
        roster.each do |grade, name|
            sorted_list[grade] = name.sort
            end
            return sorted_list
    end
end