=begin
    Переменные
    - !Присвоение по ссылке*
    -- (.clone) или (.dup) для клонирования 
=end
frady = "Frady"
fradie = frady          # fradie[0] = 'B' --> frady == "Brady"
fradie = frady.clone    # Клонирование в независимый объект
fradie[0] = 'B'         # 'Brady'
p frady != fradie

=begin
    Целые числа и числа с плавающей точкой
    - !Общая арифметика и приоритет к типу float
    - !Преобразование к единому типу при сравнении int и float 
=end
int_num = 12
sec_int_num = int_num / 2   # 6
float_num = int_num / 2.0   # 6.0
p sec_int_num == float_num

=begin
    Массивы
    - !Гетерогенность элементов [1, 2.34, 'a', 'String!'..]
    -- (+) добавление и слияние элементов 
    -- (-) удаление элементов
    -- (*n) умножение(дублирование) эелементов
=end
arr = [1, 1, 'a', 2, 3, 'Github', 72]            
arr += [44]                            # добавляем елемент(ы) в массив
sec_arr = arr + [5, 6]                # [1, 1, 'a', 2, 3, 'Github', 72, 44, 5, 6]   
third_arr = sec_arr - [1, 3, 12]      # ['a', 2, 'Github', 72, 44, 5, 6]
                                        # ...игнорирует [12]
p [arr[0], arr, sec_arr, third_arr, [1, 2.3, 'Boom!'] * 2]

=begin
    Ассоциативные массивы
    - !Гетерогенность элементов и ключей {1=>"один", "два"=>2}
    -- (.delete) удаление элемента по ключу
    -- (.merge!) слияние объектов, (.merge) слияние в независимый объект
=end
hash = {1=>"one", "two"=>2}
hash["three"] = 3.0                         # {1="one", "two"=>2, "three"=>3.0}
                                            # ...равносильно hash.merge!({"three"=>3.0})
sec_hash = hash.merge({"four"=>"четыре"})
p [hash, sec_hash, hash != sec_hash]

=begin
    Строки
    -- Строки в кавычках(") позволяют вставлять произвольные переменные #{var}
    -- Любой объект преобразуется в строку по контексту или с помощью (.to_s)
=end
name = 'Konstantin'
age = 30
welcome = "Hello, #{name}(#{age})" # "Hello, Konstantin(30)"
p [welcome, age, age.to_s]

=begin
    Диапазоны
    - !Однотипные начало и конец диапазона "a".."z", 1...1000
    -- (n..m) от n до m(включительно)
    -- (n...m) от n до m-1
=end
range_nums = 1..5
p [range_nums, range_nums.to_a]