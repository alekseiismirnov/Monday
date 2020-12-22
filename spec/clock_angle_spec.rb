require 'rspec'
require 'clock_angle'

# Values for the test from here
# https://rechneronline.de/winkel/clock-hands.php 
#

describe('clock_angle') do
  it('returns right value for 00:00 ') do
    expect(clock_angle("00:00")).to eq(0)
  end
  it('returns right value for round hours up to 12') do
    expect(clock_angle("04:00")).to eq(120)
    expect(clock_angle("05:00")).to eq(150)
    expect(clock_angle("11:00")).to eq(30)
  end

  it('returns right value for round hours from 12') do
    expect(clock_angle("12:00")).to eq(0)
    expect(clock_angle("13:00")).to eq(30)
    expect(clock_angle("19:00")).to eq(150)
  end

  it('correctly calculate time with minutes > 0') do
    expect(clock_angle("12:01")).to eq(5.5)
    expect(clock_angle("10:30")).to eq(135)
    expect(clock_angle("21:12")).to eq(156)
    expect(clock_angle("23:59")).to eq(5.5)
  end
end
