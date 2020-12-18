require 'rspec'
require 'queen_attack'

describe('Array#queen_attack?') do
  it('is false if the coordinates are not horizontally, vertically, or diagonally in line with each other') do
    expect([1,1].queen_attack?([2, 3])).to(eq(false))
  end

  it('is true, when horisontal is the same') do
    expect([1,8].queen_attack?([2, 8])).to(eq(true))
  end
end
