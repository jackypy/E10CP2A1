
module Formula
  def perimetro
    if self.class == Rectangulo
      puts "soy un Rectangulo de perimetro #{altura*2 + base*2}"
    elsif self.class == Cuadrado
      puts "soy un cuadrado de perimetro #{lado*4}"
    end
  end

  def area
    if self.class == Rectangulo
      puts "soy un Rectangulo de area= #{altura * base}"
    elsif self.class == Cuadrado
      puts "soy un Cuadrado de area = #{lado**2}"
    end
  end
end

class Rectangulo
  attr_reader :base, :altura
  include Formula
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

def lados
  puts "#{base} y #{altura}"
  end
end

class Cuadrado
  attr_reader :lado
  include Formula
  def initialize(lado)
    @lado = lado
  end

  def lados
    puts lado
  end
end

Rectangulo.new(10, 10).area
Cuadrado.new(5).area
Rectangulo.new(10, 10).perimetro
Cuadrado.new(5).perimetro
