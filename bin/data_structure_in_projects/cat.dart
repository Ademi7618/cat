void main() {
  String name = 'Pixel 7 Pro';
  int releaseYear = 2022;
  double price = 699.99;
  bool hasNfc = true;

  List<String> colors = ['Obsidian', 'Snow', 'Hazel'];
  print('Количество цветов: ${colors.length}');

  Map<String, dynamic> device = {
    'name': name,
    'releaseYear': releaseYear,
    'price': price,
    'hasNfc': hasNfc,
    'colors': colors,
  };


  print('Название: ${device['name']} ');
  print('Год выпуска: ${device['releaseYear']}');
  print('Цена: \$${device['price']}');
  print('Наличие NFC: ${device['hasNfc'] ? 'Да' : 'Нет'}');
  print('Доступные цвета: ${device['colors'].join(', ')}');


}