import 'package:blend_bristo/models/food.dart';
import 'package:flutter/material.dart';

class Restaurant extends ChangeNotifier{
  final List<Food> _menu = [

    //coffee
    Food(
      name: "Macchiato",
      description: "Indulge in the perfect harmony of bold espresso and velvety steamed milk, meticulously crafted to elevate your coffee experience.",
      imagePath: "lib/images/coffee/Macchiato.png",
      price: 1100,
      category: FoodCategory.Coffees,
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
      category: FoodCategory.Coffees,
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
      category: FoodCategory.Coffees,
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
      category: FoodCategory.Coffees,
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
      category: FoodCategory.Coffees,
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
      imagePath: "lib/images/tea/Peach Tea.png",
      price: 1100,
      category: FoodCategory.Teas,
      availableAddon: [
        Addon(name: "Honey Drizzle", price: 150),
        Addon(name: "Lemon Slice", price: 100),
        Addon(name: "Mint Leaves", price: 120)
      ]
    ),
    Food(
      name: "Mango Tea",
      description: "Embark on a refreshing journey with our Mango Tea, crafted with the finest tea leaves infused with the tropical sweetness of ripe mangoes, offering a tantalizing fusion of flavors with each invigorating sip.",
      imagePath: "lib/images/tea/Mango Tea.png",
      price: 400,
      category: FoodCategory.Teas,
      availableAddon: [
        Addon(name: "Honey", price: 150),
        Addon(name: "Mint Leaves", price: 80),
        Addon(name: "Lemon Wedge", price: 120),
      ]
    ),
    Food(
      name: "Iced Tea",
      description: "Indulge in a refreshing concoction of chilled tea, infused with your choice of fruity flavors, offering a revitalizing experience with every sip.",
      imagePath: "lib/images/tea/Iced Tea.png",
      price: 700,
      category: FoodCategory.Teas,
      availableAddon: [
        Addon(name: "Lemon Slice", price: 100),
        Addon(name: "Mint Leaves", price: 70),
        Addon(name: "Simple Syrup", price: 80)
      ]
    ),
    Food(
      name: "Lemon Tea",
      description: "Refresh your senses with our Lemon Tea, a harmonious infusion of zesty lemon and aromatic tea leaves, creating a revitalizing beverage perfect for any time of the day.",
      imagePath: "lib/images/tea/Lemon Tea.png",
      price: 400,
      category: FoodCategory.Teas,
      availableAddon: [
        Addon(name: "Honey", price: 150),
        Addon(name: "Mint Leaves", price: 80),
        Addon(name: "Lemon Wedge", price: 120),
      ]
    ),
    Food(
      name: "Apple Tea",
      description: "Indulge in a harmonious infusion of crisp apple essence, complemented by fragrant tea leaves, offering a refreshing experience with every sip.",
      imagePath: "lib/images/tea/Apple Tea.png",
      price: 1150,
      category: FoodCategory.Teas,
      availableAddon: [
        Addon(name: "Cinnamon Stick", price: 80),
        Addon(name: "Honey Drizzle", price: 150),
        Addon(name: "Lemon Slice", price: 100)
      ]
    ),

    //wraps
    Food(
      name: "Minced Beef Wrap",
      description: "Savor the rich taste of seasoned minced beef, complemented by crisp veggies and a zesty sauce, all wrapped snugly in a soft tortilla for a flavorful experience.",
      imagePath: "lib/images/wraps/Minced Beef Wraps.png",
      price: 840,
      category: FoodCategory.Wraps,
      availableAddon: [
        Addon(name: "Guacamole", price: 180),
        Addon(name: "Bacon Strips", price: 230),
        Addon(name: "Jalapeno Slices", price: 150)
      ]
    ),
    Food(
      name: "Stuffed Seafood Wrap",
      description: "Indulge in a delectable stuffed seafood wrap featuring a medley of flavorful seafood, crisp veggies, and savory sauce, all enclosed in a soft tortilla, ensuring a delightful taste sensation with every bite.",
      imagePath: "lib/images/wraps/Stuffed Seafood Wrap.png",
      price: 790,
      category: FoodCategory.Wraps,
      availableAddon: [
        Addon(name: "Avocado Slices", price: 170),
        Addon(name: "Crabmeat", price: 210),
        Addon(name: "Pickled Shrimp", price: 190)
      ]
    ),
    Food(
      name: "Crispy Chicken Wrap",
      description: "Experience the perfect blend of succulent crispy chicken, fresh veggies, and zesty sauce, all wrapped snugly in a soft tortilla, delivering a burst of flavor in every bite.",
      imagePath: "lib/images/wraps/Crispy Chicken Wraps.png",
      price: 690,
      category: FoodCategory.Wraps,
      availableAddon: [
        Addon(name: "Guacamole", price: 180),
        Addon(name: "Bacon Strips", price: 230),
        Addon(name: "Jalapeno Slices", price: 150)
      ]
    ),
    Food(
      name: "Salmon and Egg Wrap",
      description: "Dive into a delightful combination of smoked salmon, fluffy scrambled eggs, and crisp lettuce, all carefully enveloped in a soft tortilla, offering a burst of flavors with every mouthful.",
      imagePath: "lib/images/wraps/Salmon and Egg Wraps.png",
      price: 630,
      category: FoodCategory.Wraps,
      availableAddon: [
        Addon(name: "Guacamole", price: 180),
        Addon(name: "Bacon Strips", price: 230),
        Addon(name: "Jalapeno Slices", price: 150)
      ]
    ),
    Food(
      name: "Veggie Wrap",
      description: "Indulge in a delightful combination of fresh vegetables, vibrant flavors, and zesty sauce, all wrapped snugly in a soft tortilla, ensuring a burst of flavor with every bite.",
      imagePath: "lib/images/wraps/Veggie Wrap.png",
      price: 590,
      category: FoodCategory.Wraps,
      availableAddon: [
        Addon(name: "Guacamole", price: 180),
        Addon(name: "Jalapeno Slices", price: 150),
        Addon(name: "Tomato Salsa", price: 120)
      ]
    ),

    //drinks
    Food(
      name: "Strawberry Milkshake",
      description: "Indulge in the creamy sweetness with our classic strawberry milkshake",
      imagePath: "lib/images/drink/Strawberry Milkshake.png",
      price: 420,
      category: FoodCategory.Drinks,
      availableAddon: [
        Addon(name: "Whipped Cream", price: 70),
        Addon(name: "Chocolate Syrup Drizzle", price: 120),
        Addon(name: "Extra Strawberries", price: 80),
      ]
    ),
    Food(
      name: "Chocolate Milkshake",
      description: "Indulge in creamy chocolate goodness with our Chocolate Milkshake.",
      imagePath: "lib/images/drink/Chocolate Milkshake.png",
      price: 380,
      category: FoodCategory.Drinks,
      availableAddon: [
        Addon(name: "Whipped Cream", price: 70),
        Addon(name: "Chocolate Syrup Drizzle", price: 120),
        Addon(name: "Sprinkles", price: 50)
      ]
    ),
    Food(
      name: "Vanilla Milkshake",
      description: "Indulge in the creamy goodness of a classic vanilla milkshake, crafted with the finest ingredients for a rich and satisfying treat.",
      imagePath: "lib/images/drink/Vanilla Milkshake.png",
      price: 380,
      category: FoodCategory.Drinks,
      availableAddon: [
        Addon(name: "Sprinkles", price: 120),
        Addon(name: "Whipped Cream", price: 70),
        Addon(name: "Cherry on Top", price: 50)
      ]
    ),
    Food(
      name: "Veggie Wrap",
      description: "Indulge in a delightful combination of fresh vegetables, vibrant flavors, and zesty sauce, all wrapped snugly in a soft tortilla, ensuring a burst of flavor with every bite.",
      imagePath: "lib/images/drink/Veggie Wrap.png",
      price: 590,
      category: FoodCategory.Drinks,
      availableAddon: [
        Addon(name: "Guacamole", price: 180),
        Addon(name: "Jalapeno Slices", price: 150),
        Addon(name: "Tomato Salsa", price: 120)
      ]
    ),
    Food(
      name: "Veggie Wrap",
      description: "Indulge in a delightful combination of fresh vegetables, vibrant flavors, and zesty sauce, all wrapped snugly in a soft tortilla, ensuring a burst of flavor with every bite.",
      imagePath: "lib/images/drink/Veggie Wrap.png",
      price: 590,
      category: FoodCategory.Drinks,
      availableAddon: [
        Addon(name: "Guacamole", price: 180),
        Addon(name: "Jalapeno Slices", price: 150),
        Addon(name: "Tomato Salsa", price: 120)
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
