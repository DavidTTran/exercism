class Queens
  def initialize(info)
    @positions = queens_positions(info)
  end

  def queens_positions(info)
    raise ArgumentError unless valid_position(info)
    info.values.flatten
  end

  def valid_position(info)
    info.values.flatten.all? do |i|
      i > -1 && i < 8
    end
  end

  def attack?
    return true if check_rows || check_colums || check_diagonals
    false
  end

  def check_diagonals
    @positions[1]
  end

  def check_rows
    @positions[1] == @positions[3]
  end

  def check_columns
    @positions[0] == @positions[2]
  end

  def check_position
    return true if check_rows && check_columns
    false
  end
end
