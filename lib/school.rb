require 'pry' 

class School
  attr_accessor :school
  attr_reader :roster
  
  def initialize(name)
    @name = name 
    @roster = {}
  end   
  
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << "#{name}" 
  end   
  
  def grade(grade_num)
    roster[grade_num] 
  end   
  
  def sort
    roster = roster.sort_by { |k, v| k }
    roster.each do |grade, name|
      #sort names in each grade
    end
  end 
end   