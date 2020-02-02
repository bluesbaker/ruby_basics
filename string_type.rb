# Особенности работы с типом String 

# Копия строки
str = String.new("Bang!")

# Форматирование строки - %
# ...если символов форматирование несколько -- передается массив
# Подробнее о форматировании строки -> Kernel#sprintf
str = "%05d" % 12   # "00012"
str = "%-2s: %08x" % ["ID", self.__id__]    # "ID:  0138651c"

# Повторение строки - *
str = "Bang!" * 3   # "Bang!Bang!Bang!"

# Сцепление строки -- +, <<, concat...
str = "Hell" + "o, "
str << "Konstantin" 
str << 33           # "Hello, Konstantin!"

# Сравнение строк
# ...или .casecmp для регистрозависимого сравнения
str = "abcdef"
result = str <=> "abcdef"   # 0
result = str <=> "abcde"    # 1
result = str <=> "abcdefg"  # -1
result = str <=> "ABCDEF"   # 1

# Разбить строку на элементы в массив по разделителю
str.split(",")  # ["a", "b", "c", "d", "e"]

# Сопоставление с шаблоном - =~, .match
str = "cat o' 9 tails" =~ /\d/
