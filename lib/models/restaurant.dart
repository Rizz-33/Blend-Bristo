import 'package:blend_bristo/models/food.dart';

class Restaurant {
  final List<Food> _menu = [

    //coffee
    Food(
      name: "Macchiato",
      description: "Indulge in the perfect harmony of bold espresso and velvety steamed milk, meticulously crafted to elevate your coffee experience.",
      imagePath: "lib/images/coffee/Macchiato.png",
      price: 1100,
      category: FoodCategory.coffeeCreations,
      availableAddon: [
        Addon(name: "Caramel Syrup", price: 150),
        Addon(name: "Whipped Cream", price: 170),
        Addon(name: "Cocoa Powder", price: 160),
      ],
    ),
    Food(
      name: "Latte",
      description: "Savor the smooth sophistication of our signature lattes, expertly brewed to balance the robustness of espresso with the creaminess of steamed milk.",
      imagePath: "lib/images/coffee/Latte.png",
      price: 950,
      category: FoodCategory.coffeeCreations,
      availableAddon: [
        Addon(name: "Caramel Syrup", price: 150),
        Addon(name: "Whipped Cream", price: 170),
        Addon(name: "Cocoa Powder", price: 160),
      ]
    ),
    Food(
      name: "Mocha",
      description: "Dive into a decadent blend of rich espresso, creamy chocolate, and frothy milk, delivering a delightful symphony of flavors with every sip.",
      imagePath: "lib/images/coffee/Mocha.png",
      price: 750,
      category: FoodCategory.coffeeCreations,
      availableAddon: [
        Addon(name: "Caramel Syrup", price: 150),
        Addon(name: "Whipped Cream", price: 170),
        Addon(name: "Cocoa Powder", price: 160),
      ]
    ),
    Food(
      name: "Americano",
      description: "Indulge in the bold simplicity of our Americano, crafted with freshly brewed espresso and hot water, offering a robust and invigorating coffee experience.",
      imagePath: "lib/images/coffee/Americano.png",
      price: 950,
      category: FoodCategory.coffeeCreations,
      availableAddon: [
        Addon(name: "Caramel Syrup", price: 150),
        Addon(name: "Whipped Cream", price: 170),
        Addon(name: "Cocoa Powder", price: 160),
      ]
    ),
    Food(
      name: "Cappuccino",
      description: "Indulge in the perfect harmony of bold espresso, velvety steamed milk, and a cloud-like layer of frothed milk, culminating in a smooth and satisfying coffee experience.",
      imagePath: "lib/images/coffee/Cappuccino.png",
      price: 950,
      category: FoodCategory.coffeeCreations,
      availableAddon: [
        Addon(name: "Caramel Syrup", price: 150),
        Addon(name: "Whipped Cream", price: 170),
        Addon(name: "Cocoa Powder", price: 160),
      ]
    ),

    //tea
    Food(
      name: "Peach Tea",
      description: "Indulge in a refreshing fusion of ripe peach essence and premium tea, offering a tantalizing harmony of sweetness and natural flavors with each invigorating sip.",
      imagePath: "lib/images/coffee/Peach Tea.png",
      price: 1100,
      category: FoodCategory.teaHaven,
      availableAddon: [
        Addon(name: "Honey Drizzle", price: 150),
        Addon(name: "Lemon Slice", price: 100),
        Addon(name: "Mint Leaves", price: 120)
      ]
    ),
    Food(
      name: "Iced Tea",
      description: "Indulge in a refreshing concoction of chilled tea, infused with your choice of fruity flavors, offering a revitalizing experience with every sip.",
      imagePath: "lib/images/coffee/Iced Tea.png",
      price: 700,
      category: FoodCategory.teaHaven,
      availableAddon: [
        Addon(name: "Lemon Slice", price: 100),
        Addon(name: "Mint Leaves", price: 70),
        Addon(name: "Simple Syrup", price: 80)
      ]
    ),
    Food(
      name: "Iced Tea",
      description: "Indulge in a refreshing concoction of chilled tea, infused with your choice of fruity flavors, offering a revitalizing experience with every sip.",
      imagePath: "lib/images/coffee/Iced Tea.png",
      price: 400,
      category: FoodCategory.teaHaven,
      availableAddon: [
        Addon(name: "Lemon Slice", price: 100),
        Addon(name: "Mint Leaves", price: 70),
        Addon(name: "Simple Syrup", price: 80)
      ]
    ),
  ];
  
  List<Food> get menu => _menu;

  //add to cart

  //remove from cart

  //get total price of cart

  //get total number of items in cart

  // clear cart


  //generate a receipt

  //format double value into money

  //format list of addons into a string summary
}