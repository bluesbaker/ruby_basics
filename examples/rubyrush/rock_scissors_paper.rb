# Игра «Камень ножницы бумага»

rsp = ["Камень", "Ножницы", "Бумага"]

puts "Введите вариант: 0 - камень, 1 - ножницы, 2 - бумага"
choice = gets.chomp.to_i

puts "Вы выбрали: " + rsp[choice]

ai_choice = rand(3)
puts "Компьютер выбрал: " + rsp[ai_choice]

deff = (choice - ai_choice).abs

if choice != ai_choice
    if (choice < ai_choice and deff < 2) or (choice > ai_choice and deff >= 2)
        puts "Вы победили!"
    else
        puts "Победил компьютер!"
    end
else
    puts "Ничья!"
end
