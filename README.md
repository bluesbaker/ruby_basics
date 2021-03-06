# Основные конструкции и приемы Ruby
*Структурные и типовые особенности синтаксиса Ruby 2.3.3+*
___

>Примечание: для независимой копии переменной используется `.clone` или `.dub`

>Примечание: require -- будет работать, только если запустить файл из каталога программы. 
>Если запустить файл из каталога выше, то Ruby будет искать файл относительно каталога из которого проводилась команда "ruby ..."

1. Целочисленный типы **Fixnum**(<20³⁰) и **Bignum**(>20³⁰)
   * `1, 2, 72, -16, 1029384756, 0b011, 0x89...`
   * *Объединены в **Integer** в Ruby 2.4.0*

2. Числа с плавающей точкой **Float**
   * `1.2, 3.1415926535, -480.04...`

3. Гетерогенные массивы **Array**
   * `[1, 'a', 3.14, [2, 3, 4], 'boom!'...]`
   * [Подробнее](https://github.com/bluesbaker/ruby_basics/blob/master/array_type.rb)


4. Ассоциативные массивы **Hash**
   * `{"one"=>1, 2=>"two", "three"=>3.0...}`

5. Строки **String**
   * `'The Earth is very dangerous', "go back to Mars"`
   * Преобразование в строку любого объекта `.to_s`
   * Произвольные переменные в строке в кавычках `"I love is #{girlfriend}"`
   * [Подробнее](https://github.com/bluesbaker/ruby_basics/blob/master/string_type.rb)

6. Булевый тип **Boolean**
   * `true, false`
   * *Самостоятельный тип -> `true != 'true' or 1`*
   * Литерное и символьное представление при логическом сравнении `|| - or` `&& - and` `! - not` `^ - xor` 

7. Диапазоны **Range**
   * `1..100` - от 1 до 100(включительно)
   * `"a"..."z"` - от **а** до **y**
   * Перечисляемые объекты имеют метод `.succ`, определяющий следующий элемент 

8. Классы **Class**

9. Циклы **Loops**
   * [Подробнее](https://github.com/bluesbaker/ruby_basics/blob/master/loops.rb)
