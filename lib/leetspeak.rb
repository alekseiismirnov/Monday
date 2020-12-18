class String
  def leetspeak 
    return self.split('')
      .map {|char| char == 'e' ? '3': char }
      .map {|char| char == 'I' ? '1': char }
      .map {|char| char == 'o' ? '0': char }
      .join('')
      .gsub(/\Bs/,'z')
  end
end
