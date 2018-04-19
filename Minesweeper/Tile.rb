class Tile
  attr_accessor :flagged, :bombed, :revealed, :board
    
  def initialize(board)
      @board = board
      @bombed = false
      @flagged = false
      @revealed = false
  end
    
  def reveal
    
  end
  
  def neighbours
    
  end
  
  def neighbour_bomb_count
    
  end
  
  def inspect
    { "bombed"=> @bombed, "flagged"=> @flagged "revealed"=> @revealed, "position"=> @position }.inspect
  end

  
end