def to_pingpong n
  return 'ping-pong' if (n % 3) + (n % 5) == 0
  return 'ping' if n % 3 == 0
  return 'pong' if n % 5 == 0
  return n
end

def ping_pong n
  return (1..n).map {|i| to_pingpong(i)}
end
