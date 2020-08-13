require 'pry' 

class School
  attr_accessor :school
  attr_reader :roster
  
  def initialize(name)
    @name = name 
    @roster = {}
  end   
  
  # def roster
  #   @roster
  # end 
  
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << "#{name}" 
  end   
  
  def grade(grade_num)
    roster[grade_num] 
  end   
  
  def sort
    roster.sort
    # roster.each do |grade, name|
    #   name.sort
    # end   
  end 
end   