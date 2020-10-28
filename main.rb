require './robot.rb'
require 'io/console'
# require 'pry'

robot = Robot.new
message = "Hello! Robot coming online.\n" \
          "Command the robot with:\n" \
          "  L - turn left\n" \
          "  R - turn right\n" \
          "  M - move forward\n" \
          "  ? - this message\n" \
          "  Q - quit\n"

puts message
loop do
  command = STDIN.gets.chomp.downcase
  case command
  when 'l', 'r'
    robot.turn_directions(command)
    puts robot.print_message
  when 'm'
    robot.move_forward
    puts robot.print_message
  when '?'
    puts message
  when 'q'
    break
  end
end
