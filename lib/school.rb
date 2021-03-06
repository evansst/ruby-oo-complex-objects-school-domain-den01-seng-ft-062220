# code here!
require 'pry'
class School
    attr_accessor :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        # binding.pry
        @roster[grade] = [] if !@roster[grade]
        @roster[grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, _names|
            @roster[grade] = @roster[grade].sort
            # binding.pry
        end
    end
end