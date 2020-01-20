# Игра «Отгадай число»
secret_num = rand(16)

puts "Загадано число от 0 до 16, отгадайте какое?"

# Первая попытка
choice = gets.chomp.to_i
if choice > secret_num
    if (choice-secret_num).abs <= 2
        puts "Тепло (нужно меньше)"
    else 
        puts "Холодно (нужно меньше)"
    end
elsif choice < secret_num
    if (choice-secret_num).abs <= 2
        puts "Тепло (нужно больше)"
    else
        puts "Холодно (нужно больше)"
    end
else
    abort "Ура, вы выиграли!"
end

# Вторая попытка
choice = gets.chomp.to_i
if choice > secret_num
    if (choice-secret_num).abs <= 2
        puts "Тепло (нужно меньше)"
    else 
        puts "Холодно (нужно меньше)"
    end
elsif choice < secret_num
    if (choice-secret_num).abs <= 2
        puts "Тепло (нужно больше)"
    else
        puts "Холодно (нужно больше)"
    end
else
    abort "Ура, вы выиграли!"
end

# Третья попытка(окончательная)
choice = gets.chomp.to_i
if choice != secret_num
    abort "Вы проиграли!"
else
    abort "Ура, вы выиграли!"
end
