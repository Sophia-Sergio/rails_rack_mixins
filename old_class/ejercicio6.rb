# some module
module Attendance
  def student_quantity
    quantity
  end
end

# some module
module Test
  def result
    (@nota1 + @nota2) / 2.0 > 4 ? 'Estudiante aprobado' : 'Estudiante reprobado'
  end
end

# some class
class Student
  attr_reader :nombre, :nota1, :nota2
  include Test
  extend Attendance

  @@quantity = 0
  def self.quantity
    @@quantity
  end

  def initialize(nombre, nota1 = 4, nota2 = 4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @@quantity += 1
  end
end

l = []
10.times { |s| l << Student.new("Juanito #{s}", rand(1..7), rand(1..7)) }
puts l[5].nombre
puts l[5].nota1
puts l[5].nota2
puts l[5].result
puts Student.student_quantity
