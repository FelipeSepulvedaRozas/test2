

def menu
  puts 'Ingrese 1) crear archivo de alumno'
  puts 'Ingrese 2) asistencias '
  puts 'Ingrese 3) aprobacion'
  puts 'Ingrese 4) para salir'
end


loop do |option|
  menu
  option = gets.chomp
  case option.to_i
  when 1
    puts 'alumonos'
  when 2
    puts 'asistencia'
  when 3
  puts 'Aprobados'
  when 4
    break
  else
    puts 'La opcion ingresada no es valida favor reintentar'
  end
  break if option == 4
end