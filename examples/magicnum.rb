# Игра «Отгадай число»
secret_num = rand(16)
puts "Загадано число от 0 до 16, отгадайте какое?"

def check_number(guess, number)
    if guess > number
        if (guess-number).abs <= 2
            puts "Тепло (нужно меньше)"
        else 
            puts "Холодно (нужно меньше)"
        end
        return 0
    elsif guess < number
        if (guess-number).abs <= 2
            puts "Тепло (нужно больше)"
        else
            puts "Холодно (нужно больше)"
        end
        return 0
    else
        abort "Ура, вы выиграли!"
        return 1
    end
end

# Три попытки
for try in 1..3 do
    choice = STDIN.gets.chomp.to_i
    won = check_number(choice, secret_num)
    if won == 1
        break
    elsif won == 0 and try == 3
        puts "Вы проиграли!"
    end
end
