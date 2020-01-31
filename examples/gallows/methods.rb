# загрузка и разбиение слова на буквы
def get_letters
    word = ARGV[0]

    if (word == "" or word == nil)
        abort "Отсутствует слово для игры\n Укажите слово в параметрах запуска: game.rb слово"
    end

    return word.encode("UTF-8").split("")
end

# спрашиваем букву у пользователя
def get_user_input 
    letter = ""

    while letter == "" do
        letter = STDIN.gets.encode("UTF-8").chomp
    end

    return letter
end

def check_result(user_input, letters, good_letters, bad_letters)
    if good_letters.include?(user_input) or bad_letters.include?(user_input)
        return 0
    end
end

