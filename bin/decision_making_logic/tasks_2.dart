import 'dart:io';

void main() {
  stdout.write('Сколько вам лет? ');
  String? input = stdin.readLineSync();

  if (input != null) {
    int age = int.parse(input);

    if (age >= 18) {
      print('Проходите');
    } else {
      print('Приходи когда стукнет 18 лет');
    }
  }
}