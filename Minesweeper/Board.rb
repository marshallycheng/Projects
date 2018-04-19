class Board
    attr_reader :board 
  def initialize(board = Array.new(9) {Array.new(9)})
    @board = board
  end
  
  def seed_bombs
    
  end
end 
