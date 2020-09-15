# code here!
class School
    attr_accessor :name, :roster

    def initialize (name)
        @name = name
        @roster = {}
    end

    def add_student (name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade (student_with_grade)
        @roster[student_with_grade]
    end

    def sort
        roster.each {|key, val| 
            roster[key] = val.sort
        }
    end
end