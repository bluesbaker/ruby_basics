# Игра «Виселица»

require "./methods.rb"

letters = get_letters

error = 0
good_letters = []
bad_letters = []

while errors < 7 do
    
    # состояние игры
    print_status(letters, good_letters, bad_letters, error)

    puts "\nВведите следующую букву"
    user_input = get_user_input()

    # -1 -- ошибка, 1 -- победа, 0 -- отгадал букву или буква уже была
    result = check_result(user_input, letters, good_letters, bad_letters)

    if result == -1
        error += 1
    elsif result == 1
        break
    end    
end

# еще раз напоследок статус игры
print_status(letters, good_letters, bad_letters, error)


