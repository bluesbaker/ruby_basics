# Основные конструкции и приемы Ruby
*Структурные и типовые особенности синтаксиса Ruby 2.3.3+*
___

### Базовые типы и переменные
>Примечание: для независимой копии переменной используется `.clone` или `.dub`


1. Целочисленный типы **Fixnum**(<20³⁰) и **Bignum**(>20³⁰)
   * `1, 2, 72, -16, 1029384756, 0b011, 0x89...`
   * *Объединены в **Integer** в Ruby 2.4.0*

2. Числа с плавающей точкой **Float**
   * `1.2, 3.1415926535, -480.04...`

3. Гетерогенные массивы **Array**
   * `[1, 'a', 3.14, [2, 3, 4], 'boom!'...]`
4. Ассоциативные массивы **Hash**
   * `colours = {"white"=>"255255255", 255000000=>"red"}`

5. Строки **String**
   * `'The Earth is very dangerous', "go back to Mars"`
   * Преобразование в строку любого объекта `.to_s`
   * Произвольные переменные в строке в кавычках `"I love is #{girlfriend}"`

6. Булевый тип **Boolean**
   * `true, false`
   * *Самостоятельный тип -> `true != 'true' or 1`*
   * Литерное и символьное представление при логическом сравнении `|| - or` `&& - and` `! - not` `^ - xor` 