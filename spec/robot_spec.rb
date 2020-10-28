require '../robot.rb'

RSpec.describe Robot do
  it 'Initializes with the base position and direction' do
    robot = Robot.new
    expect(robot.coord).to eq([0,0])
    expect(robot.direction).to eq('north')
  end

  it 'Turns to the correct direction (R)' do
    robot = Robot.new
    robot.turn_directions('r')
    expect(robot.direction).to eq('east')
  end

  it 'Turns to the correct direction (L)' do
    robot = Robot.new
    robot.turn_directions('l')
    expect(robot.direction).to eq('west')
  end

  it 'Moves forward in the correct direction (N)' do
    robot = Robot.new
    robot.move_forward
    expect(robot.coord).to eq([0,1])
  end

  it 'Moves forward in the correct direction (E)' do
    robot = Robot.new
    robot.turn_directions('r')
    robot.move_forward
    expect(robot.coord).to eq([1,0])
  end

  it 'Moves forward in the correct direction (S)' do
    robot = Robot.new
    robot.turn_directions('r')
    robot.turn_directions('r')
    robot.move_forward
    expect(robot.coord).to eq([0,-1])
  end

  it 'Moves forward in the correct direction (W)' do
    robot = Robot.new
    robot.turn_directions('l')
    robot.move_forward
    expect(robot.coord).to eq([-1,0])
  end

  it "Prints correct message" do
    robot = Robot.new
    expect(robot.print_message).to eq("Robot at (0, 0) facing north")
  end

  it 'Advanced test case' do
    robot = Robot.new
    robot.turn_directions('l')
    robot.move_forward
    robot.move_forward
    robot.turn_directions('r')
    robot.turn_directions('r')
    robot.move_forward
    robot.move_forward
    expect(robot.print_message).to eq("Robot at (0, 0) facing east")
  end
end
