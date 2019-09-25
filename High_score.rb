#Your task is to write methods that return the highest score from the list
#the last added score and the three highest scores.

class Score
  attr_accessor :scores
  def initialize(scores)
    @scores = scores
  end
  def highest_score
    return scores.max
  end
  def last_added
    return scores[(scores.length) -1]
  end
  def three_high
    return scores.sort{|x,y| y <=> x}.slice(0..2)
  end
end
scores = Score.new([23,45,67,21,10])
puts scores.highest_score
puts scores.last_added
puts scores.three_high
