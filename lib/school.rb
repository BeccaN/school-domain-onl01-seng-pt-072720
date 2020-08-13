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
    roster = roster.sort_by { |k, v| k }
    roster.each do |grade, name|
      binding.pry
    end
  end 
end   


# metrics = {"sitea.com" => 745, "siteb.com" => 9, "sitec.com" => 10 }
# metrics.sort_by {|_key, value| value}
#   # ==> [["siteb.com", 9], ["sitec.com", 10], ["sitea.com", 745]]