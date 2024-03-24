

class Food {
  final String name;
  final String descritption;
  final String imagePath;
  final double price;
  final FoodCategory category;
  List<Addon> availableAdddon;

  Food({
    required this.name,
    required this.descritption,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAdddon,
  });
}


enum FoodCategory {
  coffeeCreations,
  teaHaven,
  bakeryDelights,
  sandwichCentral,
  specialtySips,
}

class Addon {
  String name;
  double price;

  Addon ({
    required this.name,
    required this.price
  });
}