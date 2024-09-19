class Category {
  final String emoji, name;

  Category({required this.emoji, required this.name});
}

List<Category> categories = [
  Category(
    emoji: 'assets/cinema/smiling-face.png',
    name: 'Romance',
  ),
  Category(
    emoji: 'assets/cinema/grinning-face.png',
    name: 'Comedy',
  ),
  Category(
    emoji: 'assets/cinema/horror.png',
    name: 'Horror',
  ),
  Category(
    emoji: 'assets/cinema/face.png',
    name: 'Drama',
  ),
  Category(emoji: 'assets/cinema/police_car.png', name: 'Criminal'),
  Category(emoji: 'assets/cinema/fire.png', name: 'Action')
];
