#99 bottles of beer on the wall, 99 bottles of beer.
#Take one down and pass it around, 98 bottles of beer on the wall.


class Beer_Song
  attr_accessor :n_bottles
  def initialize(n_bottles)
    @n_bottles = n_bottles
    @initial_bottles = n_bottles
  end
  def song
    while @n_bottles > 1
      print"#{@n_bottles} bottles of beer on the wall, #{@n_bottles} bottles of beer.\n"
      print"Take one down and pass it around, #{@n_bottles - 1} bottles of beer on the wall\n"
      @n_bottles -= 1
      if @n_bottles == 1
        puts"#{@n_bottles} bottles of beer on the wall, #{@n_bottles} bottles of beer."
        puts"Take one down and pass it around, no bottles of beer on the wall"
     end
   end
   puts "No more bottles of beer on the wall, no more bottles of beer."
   puts "Go to the store and buy some more, #{@initial_bottles} bottles of beer on the wall."
 end
end

solution = Beer_Song.new(5)
solution.song
