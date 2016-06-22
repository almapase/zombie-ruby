class Zombie
  def initialize(x, y)
    @x = x
    @y = y
  end

  def caminar
    # camina al azar en X o en Y una cantidad de pasos, tambien al azar
    [:x, :y].shuffle!.first == :x ? @x += rand(-20..20) : @y += rand(-20..20)
  end

  def to_s
    "[X:#{@x},Y:#{@y}]  braiiiins.... "
  end
end

# # Probando ...
# z = Zombie.new(1,1)
# puts z
#
# 10.times do |i|
#   puts "paso: #{i}"
#   z.caminar
#   puts z
# end
