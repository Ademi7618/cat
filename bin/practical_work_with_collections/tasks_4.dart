import 'dart:io';

void main() {
  Map<String, int> warehouse = {
    'Кукла': 1256,
    'Мышь': 45878,
    'Краска': 3045,
    'Монитор': 889,
  };
  
  stdout.write('Название товара: ');
  String? product = stdin.readLineSync()?.trim();
  
  if (product != null && warehouse.containsKey(product)) {
    print('Остаток товара "$product" на складе: ${warehouse[product]} шт.');
  } else {
    print('Извините, товара "$product" нет найден.');
  }
}
//Задание 4. Создать Map<String, int>, 
//где ключи — названия товаров, 
//а значения — их количество на складе. 
//Запросить у пользователя название товара и 
//вывести его остаток (предусмотреть проверку, если товара нет).