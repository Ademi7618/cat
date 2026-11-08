import 'dart:io';

void main() {
  int balance = 5000;


  print(''' \n
  БАНКОМАТ 
  1 - Баланс
  2 - Снятие
  3 - Пополнение
  \n
''');

  stdout.write('Выберите пункт меню (1-3): ');

  String? input = stdin.readLineSync();

  switch (input) {
    case '1':
      print('Ваш баланс: $balance руб.');
      break;
    case '2':
      print('Введите сумму для снятия...');
      break;
    case '3':
      print('Введите сумму для пополнения...');
      break;
    default:
      print('Неверный выбор. Пожалуйста, выберите от 1 до 3.');
  }
}
