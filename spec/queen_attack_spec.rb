require 'rspec'
require 'queen_attack'

describe('Array#queen_attack?') do
  it('is false if the coordinates are not horizontally, vertically, or diagonally in line with each other') do
    expect([1,1].queen_attack?([2, 3])).to(eq(false))
  end

  it('is true, when horisontal is the same') do
    expect([1,8].queen_attack?([2, 8])).to(eq(true))
  end

  it('is true, when vertical is the same') do
    expect([5,3].queen_attack?([5, 4])).to(eq(true))
  end

  it('is true, when both are on same diagonal') do
    expect([6,5].queen_attack?([2, 1])).to(eq(true))
  end

end
