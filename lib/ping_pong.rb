class Fixnum
  define_method(:ping_pong) do
    new_array = []
    self.times() do |time|
      number = time + 1
      if number.%(15) == 0
        new_array = new_array.push("pingpong")
      elsif number.%(3) == 0
        new_array = new_array.push("ping")
      elsif number.%(5) == 0
        new_array = new_array.push("pong")
      else
        new_array = new_array.push(number)
      end
    end
    new_array
  end
end
