require 'ping_pong'
require 'rspec'

describe '#ping_pong'  do
  it 'returns an array of ascending numbers up to the number entered' do
    expect(ping_pong(2)).to(eq([1,2]))
  end
  it 'changes divisible on 3 to "ping"' do
    expect(ping_pong(3)[2]).to eq 'ping'
  end
  it 'changes divisible on 5 to "pong"' do
    expect(ping_pong(5)[4]).to eq 'pong'
  end
  it 'does does not change non-divisible on 3 and 5' do
    expect(ping_pong(5)[3]).to eq 4
  end
  it 'changes divisible on 3 and 5 to "ping-pong"' do
    expect(ping_pong(30)[29]).to eq 'ping-pong'
  end
end
