import 'dart:io';

void main() {
  List<String> names = [];
  
  for (int i = 1; i <= 3; i++) {
    stdout.write('Введите имя $i: ');
    String? name = stdin.readLineSync();
    
    if (name != null && name.trim().isNotEmpty) {
      names.add(name.trim());
    } else {
      print('Error');
      i--;
    }
  }
  
  print('\n Список введенных имен: $names');
}
//Задание 2. Запросить у пользователя три имени через консоль, 
//поочередно добавить их в пустой список с помощью метода .add(), 
//после чего вывести весь список в терминал.