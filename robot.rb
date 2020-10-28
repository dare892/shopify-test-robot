require 'pry'

class Robot
  DIRECTIONS = ['north', 'east', 'south', 'west']

  # OBSTACLES = [
  #   [3,5],
  #   [7,8],
  #   [99,00]
  # ]

  attr_accessor :coord
  attr_accessor :direction

  def initialize
    @coord = [0,0]
    @direction = 'north'
    # @is_blocked = true
    # keep track of current coordinate
    # figure out where the obstacle is
    # try to go to the coordinate on the other side of the blockage
  end

  def move_forward
    # TODO: optimization specs

    case DIRECTIONS.index(@direction)
    when 0
      @coord[1] += 1
    when 1
      @coord[0] += 1
    when 2
      @coord[1] -= 1
    when 3
      @coord[0] -= 1
    end
  end

  def turn_directions(direction)
    if direction.upcase == 'R'
      curr_direction_index = DIRECTIONS.index(@direction)
      new_direction_index = curr_direction_index + 1
      new_direction_index = 0 if new_direction_index > 3
      @direction = DIRECTIONS[new_direction_index]
    elsif direction.upcase == 'L'
      curr_direction_index = DIRECTIONS.index(@direction)
      new_direction_index = curr_direction_index - 1
      new_direction_index = 3 if new_direction_index == 0
      @direction = DIRECTIONS[new_direction_index]
    else
      # TODO: handle this exception?
    end
  end

  def print_message
    "Robot at (#{@coord[0]}, #{@coord[1]}) facing #{@direction}"
  end
end
