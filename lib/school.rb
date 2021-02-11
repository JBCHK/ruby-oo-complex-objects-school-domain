class School
    
    attr_reader :school_name
    attr_accessor :roster 

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name, student_grade)
        @roster[student_grade] ||= []
        @roster[student_grade] << student_name
    end

    def grade(student_grade)
        @roster[student_grade]
    end

    def sort
      @roster.each do |student_grade, student_name|
        student_name.sort!
      end
      @roster.sort.map{|student_grade, student_name| [student_grade, student_name]}.to_h
    end

end
