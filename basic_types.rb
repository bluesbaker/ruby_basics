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
    Массивы
    - !Разнотипные элементы [1, 2.34, 'a', 'String!'..]
    -- (+) добавление элементов 
    -- (-) удаление элементов
    -- (*n) умножение(дублирование) эелементов
=end
nums = [1, 1, 'a', 2, 3, 'Github', 72]            
nums += [44]                            # добавляем елемент(ы) в массив
sec_nums = nums + [5, 6]                # [1, 1, 'a', 2, 3, 'Github', 72, 44, 5, 6]   
third_nums = sec_nums - [1, 3, 12]      # ['a', 2, 'Github', 72, 44, 5, 6]
                                        # ...игнорирует [12]

p [nums[0], nums, sec_nums, third_nums, [1, 2.3, 'Boom!'] * 2]