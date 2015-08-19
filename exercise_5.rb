def tem_exchange(fTem)
  cTem = 0.0
  cTem = (fTem.to_f - 32) * 5/9
  cTem = cTem.to_s
  puts "Temperature #{fTem} degree in Fahrenheit is #{cTem} degree in Celcius."
end

print "Please input a Fahrenheit temperature: "
fTem = gets.chomp
tem_exchange(fTem)