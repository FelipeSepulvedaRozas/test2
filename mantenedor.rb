
def menuprincipal
  puts 'Ingrese 1) crear archivo de Promedios'
  puts 'Ingrese 2) asistencias '
  puts 'Ingrese 3) aprobacion'
  puts 'Ingrese 4) para salir'
end


def txtnotas
  file = File.open('alumnos.csv', 'r')
  data = file.readlines
  file.close
  data
end

def txtpromedio
  file = File.open('promedio.csv', 'r')
  data =cd  file.readlines
  file.close
  data
end



loop do |option|
  menuprincipal
  option = gets.chomp
  case option.to_i
    
  when 1
       puts "Promedio por alumno"
    promedio = []
    lines = []
    File.open('alumnos.csv','r'){|file| lines = file.readlines }
     promedio= File.open('Promedios.csv','w') 
    lines.each do |value|
        sum = 0
    alumno = value.split(', ').map(&:chomp)
    alumno.each do |i|
     
      sum += i.to_i if i.to_i.is_a? Integer
    end
   promedio.puts "#{alumno[0]}:#{sum.to_f/(alumno.length - 1)}"

   puts "#{alumno[0]}:#{sum.to_f/(alumno.length - 1)}"
     
  end
  promedio.close 
  when 2
    puts 'Cantidad de Ausencias por alumno'
    lines =[]
    File.open('alumnos.csv','r'){|file| lines = file.readlines }
    lines.each do |value|
      countA = 0
      asistencia = value.split(', ').map(&:chomp)

      countA += asistencia.count('A')
    puts "#{asistencia[0]}:#{countA}"

    end
  when 3
    puts 'aprobados'
  when 4
    break
  else
    puts 'La opcion ingresada no es valida favor reintentar'
  end
  break if option == 4
end




