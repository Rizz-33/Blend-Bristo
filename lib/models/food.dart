

class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory category;
  List<Addon> availableAddon;

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddon,
  });
}


enum FoodCategory {
  Coffees,
  Teas,
  Cakes,
  Wraps,
  Drinks,
}

class Addon {
  String name;
  double price;

  Addon ({
    required this.name,
    required this.price
  });
}