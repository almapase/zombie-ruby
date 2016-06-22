require_relative 'zombie'

class Juego
  def initialize
    preparar()
  end

  def preparar
    @zetas = []
    File.open('zombies_data.txt', 'r'){|file| file.read}.split("\n").map{|e| e.split(",")}.each{|e| @zetas << Zombie.new(e[0].to_i, e[1].to_i)}
  end
  def to_s
    puts @zetas
  end
end

# Probando...
j = Juego.new
j.to_s
