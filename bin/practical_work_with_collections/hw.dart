import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print('''\n Менеджер задач (To-Do List) 
    1. Просмотр задач
    2. Добавить задачу
    3. Удалить задачу
    4. Выход \n''');

    stdout.write('Выберите пункт меню от 1 до 4: ');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        if (tasks.isEmpty) {
          print('\n Список задач пуст.');
        } else {
          print('\n Список задач:');
          for (int i = 0; i < tasks.length; i++) {
            print('${i + 1}. ${tasks[i]}');
          }
        }
        break;

      case '2':
        stdout.write('\n Введите текст задачи: ');
        String? newTask = stdin.readLineSync();
        
        if (newTask != null && newTask.trim().isNotEmpty) {
          tasks.add(newTask.trim());
          print('Задача успешно добавлена!');
        } else {
          print('Ошибка: задача не может быть пустой.');
        }
        break;

      case '3':
        if (tasks.isEmpty) {
          print('\n Список задач пуст, удалять нечего.');
          break;
        }

        print('\n Текущие задачи:');
        for (int i = 0; i < tasks.length; i++) {
          print('${i + 1}. ${tasks[i]}');
        }

        stdout.write('Введите номер задачи для удаления: ');
        String? input = stdin.readLineSync();
        int? index = int.tryParse(input ?? '');
        if (index != null && index >= 1 && index <= tasks.length) {
          String removedTask = tasks.removeAt(index - 1);
          print('Задача "$removedTask"  удалена!');
        } else {
          print('Ошибка: неверный номер задачи.');
        }
        break;

      case '4':
        print('\n Выход из программы.');
        return; 

      default:
        print('\n Неверный выбор. Пожалуйста, введите число от 1 до 4.');
    }
  }
}