
class Wordy
  attr_accessor :text
  def initialize(text)
    @text = text
  end
  def sum
    sum_n = @text.scan(/\d+/)
    solution = sum_n.map{|number| number.to_i}.reduce(&:+)
    return solution
  end
  def three_operations
    if @text.chars.join.include? "minus"
      solution = text.scan(/\d+/)
      final_number = solution.map{|number| number.to_i}.reduce(:-)
      return final_number
    elsif @text.chars.join.include? "multiplied"
      solution = text.scan(/\d+/)
      final_number = solution.map{|number| number.to_i}.reduce(:*)
      return final_number
    elsif @text.chars.join.include? "divided"
      solution = text.scan(/\d+/)
      final_number = solution.map{|number| number.to_i}.reduce(:/)
      return final_number
    end
  end
  def sequence
    unless text.chars.join.include? 'multiplied'
    solution = text.scan(/\d+/)
    print solution.map{|number| number.to_i}.reduce(&:+)
  else
    new_list = []
    text.chars.slice_before('m').each { |ary| new_list <<  ary }
    first_string =  new_list[0].join.scan(/\d+/).map{|num| num.to_i}.reduce(&:+)
    second_string = new_list[1].join.scan(/\d+/).map{|num| num.to_i}.reduce(&:+)
    print first_string * second_string
  end
end
end

final_solution = Wordy.new('What is 8 plus 3 multiplied by 2?')
#print final_solution.sequence

class Wordy
  attr_accessor :input
  TRANSFORMATION = [
  ["What is", " "],
  ["plus", "+"],
  ["minus", "-"],
  ["multiplied by", "*"],
  ["divided by", "/"]
]
  def initialize(input)
    TRANSFORMATION.each do |from,to|
      input = input.gsub(from,to)
    end
    @problem = input
  end
  def answer
    eval(@problem)
  end
end
final_solution = Wordy.new('What is 8 plus 3 multiplied by 2?')
print final_solution.answer
