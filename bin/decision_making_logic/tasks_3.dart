import 'dart:io';

void main() {
  String correctLogin = 'ademi';
  String correctPass = '12345';

  stdout.write('Введите логин: ');
  String? login = stdin.readLineSync();

  stdout.write('Введите пароль: ');
  String? password = stdin.readLineSync();

  if (login == correctLogin && password == correctPass) {
    print('Доступ разрешен');
  } else {
    print('Ошибка');
  }
}