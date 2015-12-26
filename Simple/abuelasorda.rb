
while true
  linea = gets.chomp
  
  if linea != linea.upcase then
    puts("HUH! HABLA MAS FUERTE, HIJO")
    next
  end
  
  if linea == "ADIOS" then
    break
  end
  
  puts "NO, NO DESDE " + (rand(1930...1950)).to_s
end

