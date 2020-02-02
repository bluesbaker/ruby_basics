# Игра «Виселица»

# require "./game_methods.rb" -- будет работать, только если запустить файл
# из каталога программы "...examples/gallows/". 
# Если запустить файл из каталога выше, то Ruby будет искать файл
# относительно каталога из которого проводилась команда "ruby ..."
require_relative "game_methods"

letters = get_letters

errors = 0
good_letters = []
bad_letters = []

# очистка экрана от «мусора»
system_cls

while errors < 7 do
    
    # состояние игры
    print_status(letters, good_letters, bad_letters, errors)

    puts "\nВведите следующую букву"
    user_input = get_user_input()

    # -1 -- ошибка, 1 -- победа, 0 -- отгадал букву или буква уже была
    result = check_result(user_input, letters, good_letters, bad_letters)

    if result == -1
        errors += 1
    elsif result == 1
        break
    end    
end

# еще раз напоследок статус игры
print_status(letters, good_letters, bad_letters, errors)


