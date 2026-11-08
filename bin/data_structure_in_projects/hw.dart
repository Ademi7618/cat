void main() {
  String name = 'Артур';
  int level = 15;
  double currentHp = 125.5;
  double maxHp = 150.0;
  bool isAlive = true;
  List<String> equippedItems = [
    'Железный меч',
    'Кольчужный доспех',
    'Щит стража',
    'Кольцо здоровья'
  ];

  print(' Имя:   $name');
  print(' Уровень: $level');
  print(' Здоровье (HP): $currentHp / $maxHp');
  print(' Статус: ${isAlive ? "Жив " : "Мертв "}');
  print(' Экипировка:');

  for (int i = 0; i < equippedItems.length; i++) {
    print('   ${i + 1}. ${equippedItems[i]}');
  }
}