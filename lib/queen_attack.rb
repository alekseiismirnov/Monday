class Array
  def queen_attack? position
    self[1] == position[1] or
      self[0] == position[0] or
      (self[0] - position[0])^2 == (self[1] - position[1])^2
  end
end
