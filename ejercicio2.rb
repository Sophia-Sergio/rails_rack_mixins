# Se pide:
# Agregar un método de instancia llámado lados en ambas clases.
# El método debe imprimir un string con las medidas de los lados.
# Crear un módulo llamado Formula.
# Dentro del módulo Formula crear un método llamado perimetro
# que reciba dos argumentos (lados) y devuelva el perímetro.
# Dentro del módulo Formula crear un método llamado area que
# reciba dos argumentos (lados) y devuelva el área.
# Implementar -mediante Mixin- el módulo en las clases Rectangulo y Cuadrado.
# Instanciar un Rectangulo y un Cuadrado.
# Imprimir el área y perímetro de los objetos instanciados
# utilizando el método del módulo implementado.

# some module
module Formula
  def perimetro(lado1, lado2)
    lado1 * 2 + lado2 * 2
  end

  def area
    if self.class == Rectangulo
      puts "soy un Rectangulo de área = #{altura * base}"
    elsif self.class == Cuadrado
      puts "soy un Cuadrado de área = #{lado**2}"
    end
  end
end

# some class
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

# some class
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
