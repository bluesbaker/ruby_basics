puts "Сколько стоит один доллар в рублях?"
d_rate = gets.chomp.to_f

puts "Сколько у вас рублей?"
count_rub = gets.chomp.to_f

puts "Ваши запасы равны: $ " + (count_rub / d_rate).round(2).to_s