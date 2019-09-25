#Earth: orbital period 365.25 Earth days, or 31557600 seconds
#Mercury: orbital period 0.2408467 Earth years
#Venus: orbital period 0.61519726 Earth years
#Mars: orbital period 1.8808158 Earth years
#Jupiter: orbital period 11.862615 Earth years
#Saturn: orbital period 29.447498 Earth years
#Uranus: orbital period 84.016846 Earth years
#Neptune: orbital period 164.79132 Earth years

#print number1 * number3.round(2)

class Space_Age

  @@Earth_years = 365
  @@Earth_seconds = 86400

  PLANET_INFO ={
  :mercury => 0.2408467,
  :venus => 0.61519726,
  :mars => 1.8808158,
  :jupiter => 11.862615,
  :saturn => 29.447498,
  :uranus => 84.016846,
  :neptune => 164.79132
  }

  def initialize(planet,seconds)
    @planet = planet.downcase
    @seconds = seconds
  end
  def planet_years
    if @planet.include? 'earth'
      return (@seconds / @@Earth_seconds)/((@@Earth_years)).round(2)
    else
      return ((@seconds / @@Earth_seconds)/ (@@Earth_years * PLANET_INFO[@planet.to_sym])).round(2)
    end
  end
end

solution = Space_Age.new('neptune', 1000000000)
print solution.planet_years
