puts "Какая у вас валюта на руках?
        1. Рубли
        2. Доллары"
choice = gets.chomp

puts "Сколько стоит один доллар в рублях?"
d_rate = gets.chomp.to_f

if choice == "1"  
    puts "Сколько у вас рублей?"
    count_rub = gets.chomp.to_f
    abort "Ваши запасы равны: $ " + (count_rub / d_rate).round(2).to_s
else
    puts "Сколько у вас долларов?"
    count_dol = gets.chomp.to_f
    abort "Ваши запасы на сегодня равны: " + (count_dol * d_rate).round(2).to_s + " руб."
end