#create a class "school" which will act as the 'model' of a domain
class School
    attr_accessor :name, :roster
#School ::new has an empty roster when initialized, put roster in initialize as it wants
#the roster to be initialized.roster is a hash. 
    def initialize(name)
        @name = name  
        @roster = {}
    end
#add_student is able to add a student. done by defining add student with arguments of student name,
#grade they're in + pushing into empty roster.    

    def add_student(student_name, grade)
        roster[grade] ||= [] # creating array inside of roster hash, ||= unsure of meaning, MUST LEARN!!
        roster[grade] << student_name #pushing the student name into the array nested in the hash
    end

    def grade(student_grade)#gives argument of students grade
        roster[student_grade]#causes array of student grades in hash? 
    end

    def sort#method sorts students into grades alphabetically 
        sorted = {} 
        roster.each do |grade, students|#causes roster to look at students and grades then sort via sort
          sorted[grade] = students.sort
        end
        sorted
      end
    end
