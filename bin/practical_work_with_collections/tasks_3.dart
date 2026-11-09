void main() {
  List<int> grades = [4, 5, 3, 5, 4, 5, 2];
  int sum = 0;
  
  for (int grade in grades) {
    sum += grade;
  }


  double average = sum / grades.length;
  
  print('Сумма оценок: $sum');
  print('Средний арифметический балл: ${average.toStringAsFixed(2)}');
}

//Задание 3. Дан список оценок: List<int> grades = [4, 5, 3, 5, 4, 5, 2];.
// С помощью цикла посчитать их сумму и вывести средний арифметический балл.
