class GridItem {
  final String imagePath;
  final String text;

  GridItem({required this.imagePath, required this.text});
}

// Your list of items
final List<GridItem> gridItems = [
  GridItem(imagePath: 'lib/assets/A1.png', text: 'The peace in the\nearly morning'),
  GridItem(imagePath: 'lib/assets/B1.png', text: 'The magical\ngolden hours'),
  GridItem(imagePath: 'lib/assets/C1.png', text: 'Wind-down time\nafter dinners'),
  GridItem(imagePath: 'lib/assets/D1.png', text: 'The serenity\npast midnight'),
];