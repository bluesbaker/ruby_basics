now_day = Time.now.wday
if now_day == 0 or now_day == 6
    puts "Сегодня выходной!"
else
    puts "Сегодня будний день!"
end
