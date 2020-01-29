# Поют ли соловьи?

temperature = ARGV[0]
seasone = ARGV[1]
# для Windows -- преобразование входных аргументов в utf-8
if (Gem.win_platform? && ARGV[0] && ARGV[1])
    temperature = temperature.dup.encode("UTF-8").to_i
    seasone = seasone.dup.encode("UTF-8").to_i
end

if temperature == nil
    puts "Какая сейчас температура?"
    temperature = STDIN.gets.chomp.to_i
end

if seasone == nil 
    puts "Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)"
    seasone = STDIN.gets.chomp.to_i
end

if (seasone == 1 && (temperature >= 15 && temperature <= 35)) or
    (seasone != 1 && (temperature >= 22 && temperature <= 30))
    puts "Соловьи поют!"
else
    puts "Соловьи молчат!"
end
    

