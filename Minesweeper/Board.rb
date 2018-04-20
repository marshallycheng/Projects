require_relative "Tile.rb"
require 'byebug'
class Board
    attr_reader :grid 
  def initialize(board = Array.new(9) {Array.new(9)})
    @grid = board
    @grid.each do |row|
      row.each_with_index do |_, idx|
        row[idx] = Tile.new(@grid)
      end 
    end 

  end
  
  def seed_bombs
    number_bombs = 0
    until number_bombs == 10
      random_pos = [rand(0..8), rand(0..8)]

      current_tile = self[random_pos]

      if current_tile.bombed == false
        current_tile.bombed = true 
        number_bombs += 1
      end
    end
  end
  
  def [](pos)
    row, col = pos 
    @grid[row][col]
  end 
  
  def render
    @grid.each do |row|
      row.each do |tile|
        if tile.revealed 
          print "_ "
        # elsif tile.fringe
        #   print "#{tile.fringe_digit}"
        elsif tile.flagged
          print "f "
        else 
          print "* "
        end 
      end 
      print "\n"
    end
  end 
  
  def []=(pos, value)
    row, col = pos 
    @grid[row][col] = value
  end 
end 
