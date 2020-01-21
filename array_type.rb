# Особенности работы с типом Array

# Определение массива 
arr = ["one", "two", "three"]

# Независимая копия или пустой массив( = [])
arr2 = Array.new(arr)

# Добавление элементов в массив
arr.push("four", "five")
arr << "six"

# Удаление элемента(ов) по значению
arr.delete("two")

# Удаление элемента по индексу
arr.delete_at(0)

# Объединение массивов 
new_arr = arr + ["seven", "eight"]
new_arr.concat(["nine", "ten"])

# Перевернуть массив
new_arr = arr.reverse   # без изменения исходного
new_arr.reverse!        # изменение исходного массива
